# upload.sh


NSString *headerString = @




"<header><meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no'><style>img{max-width:100%}</style></header>";




# appId=$8

# appId="com.huochaoduo.hcddriver"
appId="com.huochaoduo.hcdlogistics"

token="cc578c30bc0a0c76a3ff3942bcc5e77c"
p="type=ios＆bundle_id=${appId}＆api_token=${token}"
# data=`curl -d ${p} -X POST "http://api.bq04.com/apps"`



# echo "***************** 获取到了如下网络信息   *****************"
# echo ${data}
# echo "***************** 获取到了如下网络信息   *****************"



echo "*********************************************************************"
echo "*********************************************************************"
echo "*********************************************************************"

echo "***************** 获取到了如下网络信息   *****************"

echo "*********************************************************************"
echo "*********************************************************************"
echo "*********************************************************************"
echo "*****************  解析结果   *****************"
# echo ${data2}

# echo '{"foo": 0}' | jq -r '.[] | .foo'


# demo

echo '{
    "errors": {
        "exception": [
               "姜波"
        ]
    },
    "code": 100020
}' |  jq .errors.exception[0]

# data<空格>|<空格>jq<空格>.字段

# print : 姜波

