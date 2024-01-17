# setup-s-aliyun
<p align="center">
  <span><b><a href="./README.md">中文</a> ｜ <a href="./README_en.md">English</a></b></span><br>
</p>

基于阿里云函数计算的 Serverless-devs 安装。

## 使用示例
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

## 参数说明
| 字段 |  说明   | 类型 |  默认值  |
| ----- |  -------- | ---- | ---|
| account_id |   必填，阿里云账号ID  |   string   | - |
| access_key_id  | 必填，阿里云AK |  string    | - |
| access_key_secret  | 必填，阿里云SK |   string   | - |
| access  | 非必填，密钥别名 |  string  | default |
| version | 非必填，安装版本 |  v3.0.0  | v3.0.0 |


密钥相关说明详见 [Serverless-devs 文档](https://docs.serverless-devs.com/serverless-devs/default_provider_config#%E9%98%BF%E9%87%8C%E4%BA%91%E5%AF%86%E9%92%A5%E8%8E%B7%E5%8F%96)。