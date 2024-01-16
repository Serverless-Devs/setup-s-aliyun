echo 'Checking nodejs version, serverless-dev required nodejs >= 14.14.0.'
LOCAL_VERSION=$(node -v)
REQUIRED_VERSION='v14.14.0'
function version_compare() {
    if [[ "$1" == "$2" ]]; then
        echo 0 # 本地版本等于要求版本
        return
    fi
    if [[ "$(printf '%s\n' "$1" "$2" | sort -V | head -n1)" == "$1" ]]; then
        echo 1 # 本地版本小于要求版本
    else
        echo 0 # 本地版本大于要求版本
    fi
}
result=$(version_compare "$LOCAL_VERSION" "$REQUIRED_VERSION")
if [ "$result" == 0 ]; then
    echo 'Nodejs checked, serverless-devs installing.'
    npm i @serverless-devs/s -g --registry=https://registry.npmmirror.com
    s config add --AccountID $1 --AccessKeyID $2 --AccessKeySecret $3 -a $4 -f
    echo '################################################'
    echo 'Serverless-devs has been installed successfully.'
    echo 'The access has been configured automatically, use "s config get" to check.'
    echo '################################################'
else
    echo "Serverless-dev required nodejs >= 14.14.0, please update your local nodejs's version."
fi