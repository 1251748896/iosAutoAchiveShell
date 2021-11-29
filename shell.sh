appstore="1"
adhoc="2"
apiKey="T84F3MJX42"
apiIssuer="cf484402-b74b-424e-90a6-8cbd83faa6bd"
appId="com.shdz.longfengg"

ipaType=$adhoc
achive_mode=Release
ipa_mode=Debug

projectName="longfeng"
desktopPath="/Users/kuotian/Desktop"
ios_auto_achive="${desktopPath}/打包脚本/ios_auto_achive"
iosPorjectPath="${desktopPath}/shanghai/ios-master"

exportOptionsConfig="${ios_auto_achive}/exportOption/adhocExportOption/ExportOptions.plist"
achiveDirPath="${ios_auto_achive}/achives"
exportAchivePath="${achiveDirPath}/${projectName}"

# ipa的路径
exportIpaPath="${ios_auto_achive}/ipas"

echo "开始: 清空上次打包文件"
./clean_data.sh ${achiveDirPath} ${exportIpaPath}

cd $iosPorjectPath

echo "开始: archive"
xcodebuild \
archive -workspace ${projectName}.xcworkspace \
-scheme ${projectName} \
-configuration ${achive_mode} \
-archivePath ${exportAchivePath}  -quiet  || exit

echo "开始: export_ipa"
cd $ios_auto_achive
./export_ipa.sh ${ipa_mode} ${exportAchivePath} ${exportIpaPath} ${exportOptionsConfig}
echo "export_ipa---------完成"
ipaPath=${exportIpaPath}/${projectName}.ipa
curl -F "file=@$ipaPath" -F "uKey=4905f558df594d53597768aa52ef5863" -F "_api_key=4f7c1b7b4a0d5a89c3187cf794581b03" https://upload.pgyer.com/apiv1/app/upload