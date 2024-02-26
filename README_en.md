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
  
  - name: Setup Serverless-devs for aliyun
    uses: actions/setup-s@v1
    with:
      provider: aliyun
      version: 3.0.2
      account_id: ${{ secrets.ACCOUNT_ID }}
      access_key_id: ${{ secrets.ACCESS_KEYID }}
      access_key_secret: ${{ secrets.ACCESS_KEYSECRET }}
      access: aliyun_access
  
  - name: Setup Serverless-devs for aws
    uses: actions/setup-s@v1
    with:
      provider: aws
      # version: 3.0.0
      access_key_id: ${{ secrets.ACCESS_KEYID }}
      secret_access_key: ${{ secrets.SECRET_ACCESSKEY }}
      access: aws_access
  
```

## Params
| Property |  Description   | Type |  Default  |
| ----- |  -------- | ---- | ---|
| provider |   required, service provider  |   string   | - |
| account_id |   account ID  |   string   | - |
| access_key_id  | optical account AK |  string    | - |
| access_key_secret  | optical account SK |   string   | - |
| secret_access_key  | optical account SK |   string   | - |
| secret_id  | optical account AK |   string   | - |
| secret_key  | optical account SK |   string   | - |
| access  | access alias |  string  | default |
| version | serverless-devs version |  3.0.0  | 3.0.0 |


密钥相关说明详见 [Serverless-devs 文档](https://docs.serverless-devs.com/serverless-devs/default_provider_config#%E9%98%BF%E9%87%8C%E4%BA%91%E5%AF%86%E9%92%A5%E8%8E%B7%E5%8F%96)。


## Provider's Access Configs

| Provider | Required |
| --- | --- |
| alibaba |    AccountID, AccessKeyID, AccessKeySecret |
| aws |        AccessKeyID, SecretAccessKey|
| baidu |      AccessKeyID, SecretAccessKey|
| huawei |     AccessKeyID, SecretAccessKey|
| azure |      KeyVaultName, TenantID, ClientID, ClientSecret|
| tencent |    AccountID, SecretID, SecretKey|
| google |     PrivateKeyData |