FROM golang:latest


ENV GO111MODULE=off


COPY . /go/src/main
WORKDIR /go/src
RUN go get main
RUN go install main

#ENTRYPOINT ["/usr/local/go/bin/go" ] 

ENV DEMO_APP_ADDR=8000
ENV DEMO_REDIS_ADDR=localhost:6379

#RUN mkdir -p /main

WORKDIR /main
 
# Download all dependencies.
#RUN /usr/local/go/bin/go get -v github.com/go-chi/chi
#RUN /usr/local/go/bin/go get -v github.com/gomodule/redigo/redis
#RUN /usr/local/go/bin/go get -v  github.com/go-redis/redis

#RUN go build ./main.go

EXPOSE 8000 
#CMD ["/usr/local/go/bin/go", "main.go" ]
