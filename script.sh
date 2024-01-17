set -e # 报错后不继续执行
if ! which node > /dev/null; then
    echo "Node is not installed, serverless-dev requires nodejs >= 14.14.0."
    echo "You can install it manually or add actions/setup-node@v4 before actions/setup-s-aliyun in your .yaml/.yml file."
else
    LOCAL_VERSION=$(node -v)
    REQUIRED_VERSION='v14.14.0'
    echo 'Checking nodejs version, serverless-dev requires nodejs >= 14.14.0.'
    echo "Local nodejs's version is" $LOCAL_VERSION.
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
        echo "Serverless-dev requires nodejs >= 14.14.0, please update your local nodejs's version."
    fi
fi
