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
| 2020-03-21 | 1340483 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-21/bootstrap.dat.zip) (829M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-21/SHA256SUMS) |
| 2020-03-20 | 1340483 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-20/bootstrap.dat.zip) (829M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-20/SHA256SUMS) |
| 2020-03-19 | 1340483 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-19/bootstrap.dat.zip) (829M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-19/SHA256SUMS) |
| 2020-03-18 | 1340483 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-18/bootstrap.dat.zip) (829M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-18/SHA256SUMS) |
| 2020-03-17 | 1340483 | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-17/bootstrap.dat.zip) (829M) | [Link](https://s3-ap-southeast-2.amazonaws.com/ion-bootstrap/mainnet/2020-03-17/SHA256SUMS) |

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
