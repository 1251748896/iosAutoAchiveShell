# upload.sh

ipaType=$1
appstore=$2
adhoc=$3

exportIpaPath=$4
projectName=$5
apiKey=$6
apiIssuer=$7

appId=$8


token="cc578c30bc0a0c76a3ff3942bcc5e77c"
p="type=ios＆bundle_id=${appId}＆api_token=${token}"
data=`curl -d ${p} "http://api.bq04.com/apps"`
echo ${data}

uploadKey=data | jq .cert.binary.key
uploadToken=data | jq .cert.binary.token

if [ ${appId} == "com.huochaoduo.hcdlogistics" ]
then
projectName="Huochaoduo"
fi

ipaPath="${exportIpaPath}/${projectName}.ipa"

echo ${ipaPath}

curl   -F "key=${uploadKey}"              \
       -F "token=${uploadToken}"             \
       -F "file=@${ipaPath}"            \
       https://up.qbox.me