#!/bin/bash

# 执行命令并捕获输出
VERSION_OUTPUT=$(s -v)
version=$5
set -e # 报错后不继续执行

# 检查输出是否包含版本号的格式
if [[ $VERSION_OUTPUT ]]; then
  EXTRACTED_CONTENT=$(echo "$VERSION_OUTPUT" | sed -n 's/start:\([^,]*\),.*/\1/p;q')
  echo "Version output is valid: $EXTRACTED_CONTENT"
else
  echo 'Serverless-devs installing.'
  curl "https://images.devsapp.cn/bin/s/${version}" --output /usr/local/bin/s
  chmod 777 /usr/local/bin/s
  echo 'Serverless-devs has been installed successfully.'
fi

echo '################################################'
s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
echo '################################################'
echo 'The access has been configured automatically, use "s config get" to check.'


# # version=$5
# # valid_version=(
# #   v3.0.0
# #   v3.0.1
# #   v3.0.2
# # )
# # if [[ "${valid_version[@]}" =~ "${version}" ]]; then
#   echo 'Serverless-devs installing.'
#   npm install -g @serverless-devs/s@${version}
#   echo 'Serverless-devs has been installed successfully.'
#   # curl "https://images.devsapp.cn/bin/s/${version}" --output /usr/local/bin/s
#   # chmod 777 /usr/local/bin/s
# fi
# echo '################################################'
# s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
# echo '################################################'
# echo 'The access has been configured automatically, use "s config get" to check.'
# # else
# #   echo $version "is not valid, please choose correct version."
# # fi
