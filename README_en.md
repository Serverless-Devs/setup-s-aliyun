# setup-s-aliyun
<p align="center">
  <span><b><a href="./README.md">中文</a> ｜ <a href="./README_en.md">English</a></b></span><br>
</p>

Setting up serverless-devs based on Aliyun Function Compute.

## Usage
```yaml
steps:
  - name: Checkout
    id: checkout
    uses: actions/checkout@v4
  
  - name: Setup Serverless-devs
    uses: actions/setup-s-aliyun@v1
    with:
      account_id: ${{ secrets.ACCOUNT_ID }}
      access_key_id: ${{ secrets.ACCESS_KEYID }}
      access_key_secret: ${{ secrets.ACCESS_KEYSECRET }}
      access: default
      version: v3.0.0
```

## Params
| Property |   Description   | Type | Default |
| ----- |  -------- | ---- | ---|
| account_id |   required，Aliyun account ID  | string |-|
| access_key_id  | required，Aliyun AK |  string  | - |
| access_key_secret  | required，Aliyun SK | string | - |
| access  | aceess alias | string | default |
| version | setup version | v3.0.0 | v3.0.0 |

More details about access config to [Serverless-devs docs](https://docs.serverless-devs.com/serverless-devs/default_provider_config#%E9%98%BF%E9%87%8C%E4%BA%91%E5%AF%86%E9%92%A5%E8%8E%B7%E5%8F%96).