# export_ipa.sh

ipaMode=$1
archivePath="$2.xcarchive"
exportIpaPath=$3
exportOptionsConfig=$4

# 导出ipa
xcodebuild -exportArchive -archivePath ${archivePath} \
-configuration ${ipaMode} \
-exportPath ${exportIpaPath} \
-exportOptionsPlist ${exportOptionsConfig} \
-quiet || exit
echo '/// ipa包已导出'

