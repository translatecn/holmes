
ps -ef |grep 'go run main.go' |grep -v grep |awk '{print $2}'|xargs -I F kill -9 F
region=us-east;port=15011 go run main.go &
region=eu-north;port=15012 go run main.go &
region=ap-south;port=15013 go run main.go &

echo "wait holmes client init"
sleep 15s
echo "init done, start to send request"

python3 request.py
