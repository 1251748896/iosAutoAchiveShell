# export_ipa.sh

appId=$1
kehuAppId=$2
teamId=$3
kehuTeamId=$4
iosPorjectPath=$5

cd ${iosPorjectPath}


projectName="HuoChaoDuo"
projectPath="HuoChaoDuo.xcodeproj/project.pbxproj"
entitlementsPath="HuoChaoDuo/HuoChaoDuo.entitlements"
infoPath="HuoChaoDuo/info.plist"

LC_CTYPE=C sed -i '' "s/PRODUCT_BUNDLE_IDENTIFIER = ${appId}/PRODUCT_BUNDLE_IDENTIFIER = ${kehuAppId}/" ${projectPath}
LC_CTYPE=C sed -i '' "s/DevelopmentTeam = ${teamId}/DevelopmentTeam = ${kehuTeamId}/" ${projectPath}
LC_CTYPE=C sed -i '' "s/DEVELOPMENT_TEAM = ${teamId}/DEVELOPMENT_TEAM = ${kehuTeamId}/" ${projectPath}


/usr/libexec/PlistBuddy -c "Set :com.apple.developer.icloud-container-identifiers:0 'iCloud.${kehuAppId}'"  ${entitlementsPath}
/usr/libexec/PlistBuddy -c "Set :com.apple.developer.ubiquity-container-identifiers:0 'iCloud.${kehuAppId}'"  ${entitlementsPath}

/usr/libexec/PlistBuddy -c 'Add :NSAllowsLocalNetworking string "app不会连接到您所用网络上的设备，只会检测与您本地网关的连通性"'  ${infoPath}
/usr/libexec/PlistBuddy -c 'Add :NSLocalNetworkUsageDescription string "app不会连接到您所用网络上的设备，只会检测与您本地网关的连通性"'  ${infoPath}

