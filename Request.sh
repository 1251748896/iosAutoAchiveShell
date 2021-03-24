# Request.sh
# 

RNPath="/Users/jiangbo/Desktop/app"

cd ${RNPath}

git add .
git pull
git commit -m'打包修改'
git push

#  time=$(date '+%s')
#  echo "time = ${time}"
#  declare -i timestemp=${time}+10*60
#  echo "${timestemp}"


# token="eyJhbGciOiJFUzI1NiIsImtpZCI6IlZMMkhSNTlYOEwiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiI2OWE2ZGU5Ny1iNWMzLTQ3ZTMtZTA1My01YjhjN2MxMWE0ZDEiLCJleHAiOjE2MTQ2NzQzMjEsImF1ZCI6ImFwcHN0b3JlY29ubmVjdC12MSJ9.MnU_MPMrJw6d1e2HAPwl1yHnyQqPEc34s60i44XG8jr_dXZpxhLx7DEL0B_tj8dtWJdTeg1bHFRaK46BzwhlHg"

# curl -v -H "Authorization: Bearer ${token}" "https://api.appstoreconnect.apple.com/v1/apps"

# {
#   "alg": "ES256",
#   "kid": "5GBHM7MZ32",
#   "typ": "JWT"
# }
# data="{\"scope\":\"javademo\",\"deadline\":$time}"
# dat=$(date -r $time)

# ak="xxxxxxxx"
# sk="xxxxxxxx"

# data=$(echo $data | base64 | tr "+/" "-_")
# auth=$(echo -en $data | openssl sha1 -hmac $sk -binary | base64 | tr "+/" "-_")
# echo "$ak:$auth:$data";

# token="eyJhbGciOiJFUzI1NiIsImtpZCI6IjVHQkhNN01aMzIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiI0YWRlMDJlNS1lMmNiLTQ4ZjktYjJkZi1hNGRmMTAzNjc3ZmQiLCJleHAiOjE2MTUxOTU0NTUsImF1ZCI6ImFwcHN0b3JlY29ubmVjdC12MSJ9.9E67WfTJz8TrQgusp9Q3B0jDhqZy_bf8_sGyrRevaGZLY3pRqLxZ-pD50mmmKwfYcKPhJ2-70pRiYFWI7deQMQ"

# url="https://api.appstoreconnect.apple.com/v1/devices"
# TYPE="GET"

# curl -X GET -H "Content-Type: application/json" \
# -H "Authorization: Bearer ${token}" ${url}
