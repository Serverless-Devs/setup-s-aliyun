npm i @serverless-devs/s -g  --registry=https://registry.npmmirror.com
s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
echo 'Serverless-devs has been installed successfully.'
s config get $4