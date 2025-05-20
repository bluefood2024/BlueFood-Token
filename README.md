### Publish
```shell
sui client publish
```

### Key Objects
| Object Type | Description |
|------------|-------------|
| PackageID | The ID of the published package |
| UpgradeCap | Capability for upgrading the package |
| TreasuryCap | Treasury capability for minting/burning tokens |
| CoinMetadata | Metadata for the BLUE coin |
| RegulatedCoinMetadata | Metadata for the regulated coin |


### Publish Records
| Object Type | mainnet | testnet | devnet |
|------------|-------------|-------------|-------------|
| PackageID | {{ package_id }} | {{ package_id }} | 0xe02cee9c8a49a8130573129e74d9b8057755e314520deae15e5104f3c48dd6d6 |
| UpgradeCap | {{ upgrade_cap }} | {{ upgrade_cap }} | 0x652afd737a0459c8ffa33ff4dceb9ebd62f7902dd510d087e3118c4e345ac43e |
| TreasuryCap | {{ treasury_cap }} | {{ treasury_cap }} | 0x1c2de92551dbea99d3fb9f3dd2498dab6aa9ea05228fc51023e0e6d37bfe1bbc |
| CoinMetadata | {{ coin_metadata }} | {{ coin_metadata }} | 0x49e339b6f20ee3ab08ddc7a094816df273f25fc400cf6a6e493ccba306197d0a |
| RegulatedCoinMetadata | {{ regulated_metadata }} | {{ regulated_metadata }} | 0x908377980ef30e46056f711d596ec180c5c0eb05442ac5f20e8124a14f1fea15 |

### 指令
#### 铸币
```shell
sui client call --package 0x2 --module coin --function mint_and_transfer --type-args <CoinType> --args <TreasuryCap> <amount> <recipient>
```

#### 修改Token元数据
```shell
# 修改名字
sui client call --package 0x2 --module coin --function update_name --type-args <CoinType> --args <TreasuryCap> <CoinMetadata> <NewName>

# 修改符号
sui client call --package 0x2 --module coin --function update_symbol --type-args <CoinType> --args <TreasuryCap> <CoinMetadata> <NewSymbol>

# 修改描述
sui client call --package 0x2 --module coin --function update_description --type-args <CoinType> --args <TreasuryCap> <CoinMetadata> <NewDescription>

# 修改图标
sui client call --package 0x2 --module coin --function update_icon_url --type-args <CoinType> --args <TreasuryCap> <CoinMetadata> <NewUrl>
```
