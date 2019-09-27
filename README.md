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
| 2019-09-27 | 1337280 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-27/bootstrap.dat.zip) (826M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-27/SHA256SUMS) |
| 2019-09-26 | 1335870 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-26/bootstrap.dat.zip) (825M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-26/SHA256SUMS) |
| 2019-09-25 | 1334462 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-25/bootstrap.dat.zip) (825M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-25/SHA256SUMS) |
| 2019-09-24 | 1333030 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-24/bootstrap.dat.zip) (824M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-24/SHA256SUMS) |
| 2019-09-23 | 1331600 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-23/bootstrap.dat.zip) (824M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2019-09-23/SHA256SUMS) |

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
