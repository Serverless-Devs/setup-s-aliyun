set -e # 报错后不继续执行
version=$5
# valid_version=(
#   v3.0.0
#   v3.0.1
#   v3.0.2
# )
# if [[ "${valid_version[@]}" =~ "${version}" ]]; then
if [ ! -f "/usr/local/bin/s" ]; then
  echo 'Serverless-devs installing.'
  npm install -g serverless-devs/s@${version}
  echo 'Serverless-devs has been installed successfully.'
  # curl "https://images.devsapp.cn/bin/s/${version}" --output /usr/local/bin/s
  # chmod 777 /usr/local/bin/s
fi
echo '################################################'
s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
echo '################################################'
echo 'The access has been configured automatically, use "s config get" to check.'
# else
#   echo $version "is not valid, please choose correct version."
# fi
