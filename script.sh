npm i @serverless-devs/s -g  --registry=https://registry.npmmirror.com
s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
s deploy --use-local -y