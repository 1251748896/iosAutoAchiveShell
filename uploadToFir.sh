# upload.sh

ipaType=$1
appstore=$2
adhoc=$3

exportIpaPath=$4
projectName=$5
apiKey=$6
apiIssuer=$7

appId=$8

binary=`curl -d 'type=ios' -d 'bundle_id=${appId}' -d 'api_token=cc578c30bc0a0c76a3ff3942bcc5e77c' "http://api.bq04.com/apps" | jq .cert.binary`
echo "binary = ${binary}"

uploadKey=`echo ${binary} | jq .key`
uploadToken=`echo ${binary} | jq .token`

echo "uploadKey = ${uploadKey}"
if [ ! -n "$uploadKey" ]; then 
echo "uploadKey\token获取-----失败"
else 
echo "上传信息获取-----成功"
fi 

if [ ${appId} == "com.huochaoduo.hcdlogistics" ]
then
projectName="Huochaoduo"
fi

ipaPath="${exportIpaPath}/${projectName}.ipa"

echo ${ipaPath}

curl   -F "key=${uploadKey}"              \
       -F "token=${uploadToken}"             \
       -F "file=@${ipaPath}"            \
       https://up.qbox.me  | jq .is_completed


