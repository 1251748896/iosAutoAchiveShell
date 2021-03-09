# ios_auto_achive.sh


kehudomain="com.huochaoduo"
role="logistics"
# role="driver"
kehuTeamId="6PU7HJG232"
apiKey="VL2HR59X8L"
apiIssuer="69a6de97-b5c3-47e3-e053-5b8c7c11a4d1"

# ipaType(打包类型): 1: appstore; 2: adhoc
ipaType="2"

./start.sh ${kehudomain} "logistics" ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer}

./start.sh ${kehudomain} "driver" ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer}




