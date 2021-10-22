# ios_auto_achive.sh
role=$1

kehudomain="com.huochaoduo"

kehuTeamId="9SX98DB3MS"
apiKey="T84F3MJX42"
apiIssuer="cf484402-b74b-424e-90a6-8cbd83faa6bd"

# ipaType(打包类型): 1: appstore; 2: adhoc

ipaType="2"

defaultrole="hcddriver"


if [ ! -n "$role" ]; then 
echo "打包司机端"
role=${defaultrole}
else 
echo "按参数打包: ${role}"
fi 


./flutter.sh ${kehudomain} ${role} ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer} ${defaultrole}

# if [ ${role} == ${defaultrole} ]
# then ./start.sh ${kehudomain} ${role} ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer} ${defaultrole}
# else 
# ./flutter.sh ${kehudomain} ${role} ${kehuTeamId} ${ipaType} ${apiKey} ${apiIssuer} ${defaultrole}
# fi


# 货超多司机

# 胡阔天
# 阔天科技有限公司
# +8615982285748
# 1251748896@qq.com


# 我们2021年2月28日,取得了《货超多》商标权,共包含88个使用商品和服务项目.
# 目前,app已经开发完成,app名字却被占用,希望拿回“货超多司机”这个名字的使用权.





