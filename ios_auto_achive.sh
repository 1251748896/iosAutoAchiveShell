# ios_auto_achive.sh


kehudomain="com.huochaoduo"
# role="logistics"
role="driver"
kehuTeamId="6PU7HJG232"
apiKey="VL2HR59X8L"
apiIssuer="69a6de97-b5c3-47e3-e053-5b8c7c11a4d1"

# ipaType(打包类型): 1: appstore; 2: adhoc
ipaType="2"

./start.sh ${kehudomain} ${role} ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer}


# jsonpath="./acount_config.json"

# if [ ! -f $jsonpath ]; 
#   then echo "file not exist"
#   exit 0
# fi
# while read line
# do  
#   [[ $line =~ "apiKey"  ]] && {
#       apiKey=${line:10}
#       echo "apiKey === ${apiKey}"
#   }
#   [[ $line =~ "apiIssuer"  ]] && { 
#       apiIssuer=${line:13}
#       echo "apiIssuer === ${apiIssuer}"
#    }
#   [[ $line =~ "kehuTeamId" ]] && {
#       kehuTeamId=${line:14}
#       echo "kehuTeamId === ${kehuTeamId}"
#   }
#   [[ $line =~ "type" ]] && {
#       ipaType=${line:8}
#       echo "type === ${ipaType}"
#   }
#   [[ $line =~ "kehudomain" ]] && {
#       kehudomain=${line:14}
#       echo "kehudomain === ${kehudomain}"
#   }
#   [[ $line =~ "role" ]] && {
#     role=${line:${8}}
#       echo "role ===:${role}"
#   }
# done < $jsonpath



