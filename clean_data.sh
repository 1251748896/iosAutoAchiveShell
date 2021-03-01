# clean_data.sh
# acount_config.json   rtf



# function info(){
# 		# 获取key所在的行
#         info_line=`sed -n "/^$1/p" $2`
#         if [[ -z $info_line ]];then
#                 echo "$1为空，请核查"
#                 exit 4
#         fi
#         # 入参key赋给变量，因为$1结合其他命令很容易出错，所以这里单独定义
#         tmp_str=$1
#         # 取key的长度，+1是为了去掉 =
#         tmp_len=${#tmp_str}+1
# 		# 返回key对应的value值
#         echo "fff = ${info_line:${tmp_len}}"
# }

# username=`info apiKey ./acount_config.json`
# echo "开始读取"
# echo "username = ${username}"


achiveDirPath=$1
exportIpaPath=$2

cd ${achiveDirPath}
rm -rf *

cd ${exportIpaPath}
rm -rf *

