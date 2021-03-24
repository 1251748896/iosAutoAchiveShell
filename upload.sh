# upload.sh

ipaType=$1
appstore=$2
adhoc=$3

exportIpaPath=$4
projectName=$5
apiKey=$6
apiIssuer=$7

# 上传ipa
if [ ${ipaType} == ${appstore} ]
then 
echo "appstore-ipa"
xcrun altool --upload-app -f ${exportIpaPath}/${projectName}.ipa -t iOS --apiKey ${apiKey} --apiIssuer ${apiIssuer} --verbose
echo '/// 发布ipa包完成 '

elif [ ${ipaType} == ${adhoc} ]
then
echo "adhoc-ipa"
curl -F "file=@${exportIpaPath}/${projectName}.ipa" -F "uKey=26edf7f2ee1b2e7080422e65b3259511" -F "_api_key=371119bdbd9ea4837b59cda3e395ce46" https://qiniu-storage.pgyer.com/apiv1/app/upload
else
echo "打包类型错误"
fi

