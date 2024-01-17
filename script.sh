set -e # 报错后不继续执行
echo 'Serverless-devs installing.'
curl https://images.devsapp.cn/bin/s/v3.0.0 --output /usr/local/bin/s
chmod 777 /usr/local/bin/s
echo '################################################'
s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
echo '################################################'
echo 'Serverless-devs has been installed successfully.'
echo 'The access has been configured automatically, use "s config get" to check.'