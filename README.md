
## Usage

To include the action in a workflow in another repository, you can use the
`uses` syntax with the `@` symbol to reference a specific branch, tag, or commit
hash.

```yaml
steps:
  - name: Checkout
    id: checkout
    uses: actions/checkout@v4

  - name: Setup Node
    id: setupnode
    uses: actions/setup-node@v4
    with:
      node-version: 18
  
  - name: Setup Serverless-devs
    uses: actions/setup-s-aliyun@v1
    with:
      account_id: ${{ secrets.ACCOUNT_ID }}
      access_key_id: ${{ secrets.ACCESS_KEYID }}
      access_key_secret: ${{ secrets.ACCESS_KEYSECRET }}
      access: default
```
