# ion-bootstrap

Generates daily bootstrap.dat files for the ION mainnet and testnet networks.

## Usage

1. Download and extract one of the below links
2. Place the `bootstrap.dat` in the root of your ION Core data directory
    - Linux: `~/.ioncoin/`
    - Mac: `~/Library/Application Support/ioncoin/`
    - Windows: `%APPDATA%\ioncoin`
3. Run your wallet and let it sync using `bootstrap.dat`
4. Once the sync is complete `bootstrap.dat` will be renamed to `bootstrap.dat.old` and can be safely removed

**Note:** The `bootstrap.dat` for testnet must be placed inside the `testnet` folder of your data directory.

## bootstrap.dat Files

### Mainnet

|    Date    | Block Height | ZIP | SHA256SUMS |
| ---------- | ------------ | --- | ---------- |
| 2019-05-09 | 1133172 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-09/bootstrap.dat.zip) (735M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-09/SHA256SUMS) |
| 2019-05-08 | 1131746 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-08/bootstrap.dat.zip) (735M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-08/SHA256SUMS) |
| 2019-05-07 | 1130319 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-07/bootstrap.dat.zip) (734M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-07/SHA256SUMS) |
| 2019-05-06 | 1128903 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-06/bootstrap.dat.zip) (734M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-06/SHA256SUMS) |
| 2019-05-05 | 1127482 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-05/bootstrap.dat.zip) (733M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-05-05/SHA256SUMS) |

### Testnet

|    Date    | Block Height | ZIP | SHA256SUMS |
| ---------- | ------------ | --- | ---------- |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 |
| 0 | 0 | 0 | 0 |

## Attributions

Thanks to [UdjinM6](https://github.com/UdjinM6) and his `dash-bootstrap` script
for giving me the groundwork to build `ion-bootstrap`.

## Donations

If you appreciate the work feel free to donate and help cover some of the
hosting costs!

ION: iTSzxxH4ShZBAdfBYiTY6PeMYqkmA5d5aV
