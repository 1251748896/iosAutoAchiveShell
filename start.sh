# start.sh


kehudomain=$1
role=$2

kehuTeamId=$3
ipaType=$4
apiKey=$5
apiIssuer=$6

defaultrole=$7

appstore="1"
adhoc="2"

achive_mode=Release
ipa_mode=Debug

projectName=""
if [ ${role} == ${defaultrole} ]
then
projectName="LogisticsDriver"
else 
projectName="LogisticsOwner"
fi

echo ${projectName}

if [ ${ipaType} == ${appstore} ]
then ipa_mode=Release
fi

# 需要被替换的 appId
appId="com.huochaoduo.${role}"
# 客户的 kehuAppId
kehuAppId="${kehudomain}.${role}"
# 需要被替换的 teamId
teamId="9SX98DB3MS"

# 脚本文件夹（ios_auto_achive）和RN代码文件夹（app），最好在平级目录（在同一个文件夹当中）

desktopPath="/Users/kuotian/Desktop"
ios_auto_achive="${desktopPath}/打包脚本/ios_auto_achive"

projectPath=""
if [ ${role} == ${defaultrole} ]
then
projectPath="${desktopPath}/driver_ios/LogisticsDriver"
else 
projectPath="${desktopPath}/logistics_ios/LogisticsOwner"
fi

# ios工程目录
iosPorjectPath="${projectPath}"
# achive的路径
achiveDirPath="${ios_auto_achive}/achives"
# ipa的路径
exportIpaPath="${ios_auto_achive}/ipas"

exportAchivePath="${achiveDirPath}/${projectName}"

# appStore的ipa配置的路径
ExportOptionsPath=""
if [ ${ipaType} == ${appstore} ]
then ExportOptionsPath="appStoreExportOptions" 
else 
ExportOptionsPath="adhocExportOption"
fi

exportOptionsConfig="${ios_auto_achive}/exportOption/${ExportOptionsPath}/ExportOptions.plist"

# 调整打包配置文件
echo "开始: 调整打包配置"
./fix_export_option.sh ${kehuTeamId}
echo "调整打包配置---------完成"

# 清空achives和ipas
echo "开始: 清空上次打包文件"
./clean_data.sh ${achiveDirPath} ${exportIpaPath}
echo "清空上次打包文件---------完成"

# 则自动调整git分支
# ./fix_branch.sh ${RNPath} ${role}
echo "检查: 替换客户账号和包名"
if [ ${appId} != ${kehuAppId} ]
then 
echo "正在替换客户账号和包名..."
./replace_info.sh ${appId} ${kehuAppId} ${teamId} ${kehuTeamId} ${iosPorjectPath}
fi
echo "替换客户账号和包名---------完成"

echo "开始: export_achive"
./export_achive.sh ${achive_mode} ${projectName} ${exportAchivePath} ${iosPorjectPath}
echo "export_achiveq---------完成"
echo "开始: export_ipa"
./export_ipa.sh ${ipa_mode} ${exportAchivePath} ${exportIpaPath} ${exportOptionsConfig}
echo "export_ipa---------完成"
./upload.sh ${ipaType} ${appstore} ${adhoc} ${exportIpaPath} ${projectName} ${apiKey} ${apiIssuer}

./uploadToFir.sh ${ipaType} ${appstore} ${adhoc} ${exportIpaPath} ${projectName} ${apiKey} ${apiIssuer} ${appId}
