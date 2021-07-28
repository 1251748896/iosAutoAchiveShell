# ios_auto_achive.sh
role=$1

kehudomain="com.huochaoduo"

kehuTeamId="9SX98DB3MS"
apiKey="T84F3MJX42"
apiIssuer="cf484402-b74b-424e-90a6-8cbd83faa6bd"

# ipaType(打包类型): 1: appstore; 2: adhoc
ipaType="2"

./start.sh ${kehudomain} ${role} ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer}

# ./start.sh ${kehudomain} "driver" ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer}




