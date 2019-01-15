#!/usr/bin/env bash
#
# Creates a bootstrap.dat binary for either the ION mainnet or testnet network
# from a running iond daemon and uploads it to an Amazon S3 bucket. The script
# accepts the network name as an argument (mainnet/testnet).

export LC_ALL=C

network="$1"

s3_bucket_name='ion-bootstrap'
s3_bucket_uri="s3://"${s3_bucket_name}""
s3_bucket_base_url="https://s3-ap-southeast-2.amazonaws.com/"${s3_bucket_name}""
s3_object_append_url=""${network}"/"$(date -u +%Y-%m-%d)""
s3_object_keep_days=5

bootstrap_file='bootstrap.dat'
bootstrap_file_zip=""$bootstrap_file".zip"
bootstrap_file_sha256='SHA256SUMS'

# Create the bootstrap.dat binary.
create_bootstrap() {
  ./linearize-hashes.py linearize-"${network}".cfg > hashlist.txt
  ./linearize-data.py linearize-"${network}".cfg
}

# Create zip.
create_zip() {
  zip -X "${bootstrap_file_zip}" "${bootstrap_file}"
}

# Calculate bootstrap.dat checksum.
calculate_checksum() {
  sha256sum "${bootstrap_file}" > "${bootstrap_file_sha256}"
  sha256sum "${bootstrap_file_zip}" >> "${bootstrap_file_sha256}"
}

# Upload files to Amazon S3 bucket.
upload_files_to_s3() {
  aws s3 cp "${bootstrap_file_zip}" ""${s3_bucket_uri}"/"${s3_object_append_url}"/"
  aws s3 cp "${bootstrap_file_sha256}" ""${s3_bucket_uri}"/"${s3_object_append_url}"/"
}

# Remove files/folders older than 5 days from Amazon S3 bucket.
remove_old_files_from_s3() {
  max_days=30

  while [ "${s3_object_keep_days}" -le "${max_days}" ]; do
    check_date="$(date --date=""${s3_object_keep_days}" days ago" +"%Y-%m-%d")"

    if [ "$(aws s3 ls --recursive s3://ion-bootstrap/mainnet/"${check_date}")" ]; then
      aws s3 rm --recursive ""${s3_bucket_uri}"/"${network}"/"${check_date}""
    fi
    
    let "s3_object_keep_days++"
  done
}

# Update the README.md with latest links.
update_readme() {
  readme_header="$(cat readme-header.md)"
  readme_footer="$(cat readme-footer.md)"
  zip_size="$(ls -lh "${bootstrap_file_zip}" | awk '{ print $5 }')"
  block_height="$(wc -l hashlist.txt | awk '{ print $1 }')"

  echo -e "${readme_header}\n" > README.md

  sed -i "4a\| "$(date -u +%Y-%m-%d)" | \
"${block_height}" | \
[Link](""${s3_bucket_base_url}"/"${s3_object_append_url}"/"${bootstrap_file_zip}"") ("${zip_size}") | \
[Link](""${s3_bucket_base_url}"/"${s3_object_append_url}"/"${bootstrap_file_sha256}"") |" readme-links-"${network}".md
  sed -i '$d' readme-links-"${network}".md

  echo -e "$(cat readme-links-mainnet.md)\n" >> README.md
  echo -e "$(cat readme-links-testnet.md)\n" >> README.md

  echo -e "${readme_footer}" >> README.md
}

# Commit changes and push to GitHub.
commit_changes() {
  rm "${bootstrap_file}" "${bootstrap_file_zip}" "${bootstrap_file_sha256}" hashlist.txt
  git add *.md
  git commit -m "Add "${network}" bootstrap.dat links for "$(date -u +%Y-%m-%d)""
  git push
}

# Main
create_bootstrap
create_zip
calculate_checksum
upload_files_to_s3
remove_old_files_from_s3
update_readme
commit_changes
