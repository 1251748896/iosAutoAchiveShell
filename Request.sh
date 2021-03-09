# Request.sh
# 

 time=$(date '+%s')
 echo "time = ${time}"
 declare -i timestemp=${time}+10*60
 echo "${timestemp}"

token="eyJhbGciOiJFUzI1NiIsImtpZCI6IjVHQkhNN01aMzIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiI0YWRlMDJlNS1lMmNiLTQ4ZjktYjJkZi1hNGRmMTAzNjc3ZmQiLCJleHAiOjE2MTUxOTU0NTUsImF1ZCI6ImFwcHN0b3JlY29ubmVjdC12MSJ9.9E67WfTJz8TrQgusp9Q3B0jDhqZy_bf8_sGyrRevaGZLY3pRqLxZ-pD50mmmKwfYcKPhJ2-70pRiYFWI7deQMQ"

url="https://api.appstoreconnect.apple.com/v1/devices"
TYPE="GET"

curl -X GET -H "Content-Type: application/json" \
-H "Authorization: Bearer ${token}" ${url}

https://jwt.io/#debugger-io?token=eyJhbGciOiJFUzI1NiIsImtpZCI6IjVHQkhNN01aMzIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiI0YWRlMDJlNS1lMmNiLTQ4ZjktYjJkZi1hNGRmMTAzNjc3ZmQiLCJleHAiOjE2MTUxOTU0NTUsImF1ZCI6ImFwcHN0b3JlY29ubmVjdC12MSJ9.9E67WfTJz8TrQgusp9Q3B0jDhqZy_bf8_sGyrRevaGZLY3pRqLxZ-pD50mmmKwfYcKPhJ2-70pRiYFWI7deQMQ&publicKey=-----BEGIN%20PUBLIC%20KEY-----%0AMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEEVs%2Fo5%2BuQbTjL3chynL4wXgUg2R9%0Aq9UU8I5mEovUf86QZ7kOBIjJwqnzD1omageEHWwHdBO6B%2BdFabmdT9POxg%3D%3D%0A-----END%20PUBLIC%20KEY-----