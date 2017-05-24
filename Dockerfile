FROM golang

RUN mkdir -p /go/src/wechat
WORKDIR /go/src/wechat

COPY . /go/src/wechat

RUN go get -d -v
RUN go get github.com/beego/bee

CMD ["bee", "run"]


# sudo docker build -t wechat .
# sudo docker run -d --name wechat -v $(pwd):/go/src/my_bbs -p 54011:8080 -p 54012:8088 my_bbs


# sudo docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=200800 -d mysql

# sudo docker run --name pg_bbs -p 56432:5432 -e POSTGRES_USER=JOLLY -e POSTGRES_PASSWORD=200800 -e POSTGRES_DB=JOLLY -d postgres