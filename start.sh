# start.sh


kehudomain=$1
role=$2

kehuTeamId=$3
ipaType=$4
apiKey=$5
apiIssuer=$6

appstore="1"
adhoc="2"

achive_mode=Release
ipa_mode=Debug

if [ ${ipaType} == ${appstore} ]
then ipa_mode=Release
fi

# 需要被替换的 appId
appId="com.huochaoduo.${role}"
# 客户的 kehuAppId
kehuAppId="${kehudomain}.${role}"
# 需要被替换的 teamId
teamId="6PU7HJG232"

projectName="HuoChaoDuo"

# ios工程目录
iosPorjectPath="/Users/jiangbo/Desktop/app/ios"
# achive的路径
achiveDirPath="/Users/jiangbo/Desktop/ios_auto_achive/achives"
exportAchivePath="${achiveDirPath}/${projectName}"
# ipa的路径
exportIpaPath="/Users/jiangbo/Desktop/ios_auto_achive/ipas"
# appStore的ipa配置的路径
ExportOptionsPath=""
if [ ${ipaType} == ${appstore} ]
then ExportOptionsPath="appStoreExportOptions" 
else 
ExportOptionsPath="adhocExportOption"
fi

exportOptionsConfig="/Users/jiangbo/Desktop/ios_auto_achive/exportOption/${ExportOptionsPath}/ExportOptions.plist"


# 调整打包配置文件
./fix_export_option.sh ${kehuTeamId}

# 清空achives和ipas
./clean_data.sh ${achiveDirPath} ${exportIpaPath}


if [ ${appId} != ${kehuAppId} ]
then 
echo "替换客户账号和包名"
./replace_info.sh ${appId} ${kehuAppId} ${teamId} ${kehuTeamId} ${iosPorjectPath}
fi

./export_achive.sh ${achive_mode} ${projectName} ${exportAchivePath} ${iosPorjectPath}
./export_ipa.sh ${ipa_mode} ${exportAchivePath} ${exportIpaPath} ${exportOptionsConfig}

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

