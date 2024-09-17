FROM          golang
RUN           mkdir /app
WORKDIR       /app
COPY          main.go ./
RUN           go mod init dispatch
RUN           go get
RUN           go build
ENTRYPOINT    ["/app/dispatch"]
