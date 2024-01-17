set -e # 报错后不继续执行
version=$5
valid_version=(
  v3.0.0
)
if [[ "${valid_version[@]}" =~ "${version}" ]]; then
  echo 'Serverless-devs installing.'
  echo "https://images.devsapp.cn/bin/s/${version}"
  curl "https://images.devsapp.cn/bin/s/${version}" --output /usr/local/bin/s
  chmod 777 /usr/local/bin/s
  echo '################################################'
  s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
  echo '################################################'
  echo 'Serverless-devs has been installed successfully.'
  echo 'The access has been configured automatically, use "s config get" to check.'
else
  echo $version "is not valid, please choose correct version."
fi
