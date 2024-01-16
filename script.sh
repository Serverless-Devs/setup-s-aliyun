echo 'Serverless-devs installing.'
npm i @serverless-devs/s -g  --registry=https://registry.npmmirror.com
s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
echo '################################################'
echo 'Serverless-devs has been installed successfully.'
echo 'The access has been configured automatically, as shown bellow.'
s config get -a $4