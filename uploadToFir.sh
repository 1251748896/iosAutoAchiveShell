# upload.sh

ipaType=$1
appstore=$2
adhoc=$3

exportIpaPath=$4
projectName=$5
apiKey=$6
apiIssuer=$7

appId=$8


echo "开始请求1"
echo ${appId}
echo "开始请求2"
token="d345ce58e8850e4412a7f8b9b23d60a3"
p="type=ios＆bundle_id=${appId}＆api_token=${token}"
data=`curl -d ${p} "http://api.bq04.com/apps"`
echo ${data}