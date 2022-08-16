# 關閉並且刪除現有containers
docker stop node-app
docker rm node-app
#刪除舊的image
docker rmi node-app-image
#重新建立image並且重啟containers
docker build -t  -f Dockerfile .
docker run -v :/app -p 3000:3000 -d --name node-app node-app-image
