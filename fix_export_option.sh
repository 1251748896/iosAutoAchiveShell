# fix_export_option.sh
# 修正打包文件重的teamID

kehuTeamId=$1
adhocEntitlementsPath="exportOption/adhocExportOption/ExportOptions.plist"
appStoreEntitlementsPath="exportOption/appStoreExportOptions/ExportOptions.plist"

/usr/libexec/PlistBuddy -c "Set :teamID '${kehuTeamId}'"  ${adhocEntitlementsPath}

/usr/libexec/PlistBuddy -c "Set :teamID '${kehuTeamId}'"  ${appStoreEntitlementsPath}

