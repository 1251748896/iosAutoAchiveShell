# upload.sh

ipaType=$1
appstore=$2
adhoc=$3

exportIpaPath=$4
projectName=$5
apiKey=$6
apiIssuer=$7

appId=$8
if [ ${appId} == "com.huochaoduo.hcdlogistics" ]
then
projectName="Huochaoduo"
fi

# 上传ipa
if [ ${ipaType} == ${appstore} ]
then 
echo "appstore-ipa"
xcrun altool --upload-app -f ${exportIpaPath}/${projectName}.ipa -t iOS --apiKey ${apiKey} --apiIssuer ${apiIssuer} --verbose
echo '/// 发布ipa包完成 '

elif [ ${ipaType} == ${adhoc} ]
then
echo "adhoc-ipa"
curl -F "file=@${exportIpaPath}/${projectName}.ipa" -F "uKey=f4882b1a94993b343698a4d8fc235522" -F "_api_key=209e15f7238c3a930516f343d0298e1c" https://upload.pgyer.com/apiv1/app/upload
else
echo "打包类型错误"
fi

