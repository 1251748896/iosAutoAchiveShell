# upload.sh

ipaType=$1
appstore=$2
adhoc=$3

exportIpaPath=$4
projectName=$5
apiKey=$6
apiIssuer=$7

ipaPath=${exportIpaPath}/logistics.ipa

echo "ddd"
echo $ipaPath

# 上传ipa
if [ ${ipaType} == ${appstore} ]
then 
echo "appstore-ipa"
xcrun altool --upload-app -f ipaPath -t iOS --apiKey ${apiKey} --apiIssuer ${apiIssuer} --verbose
echo '/// 发布ipa包完成 '

elif [ ${ipaType} == ${adhoc} ]
then
echo "adhoc-ipa"
curl -F "file=@$ipaPath" -F "uKey=4905f558df594d53597768aa52ef5863" -F "_api_key=4f7c1b7b4a0d5a89c3187cf794581b03" https://upload.pgyer.com/apiv1/app/upload
else
echo "打包类型错误"
fi

