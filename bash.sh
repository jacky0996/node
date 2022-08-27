# 關閉並且刪除現有containers
docker stop node-app
docker rm node-app
#刪除舊的image
docker rmi node-app-image
#重新建立image並且重啟containers
docker build -t  node-app-image .
docker run -v :/app -v /app/node_modules --env PORT=4000 -p 3000:4000 -d --name node-app node-app-image
