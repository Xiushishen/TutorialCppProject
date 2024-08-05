# 使用官方GCC镜像
FROM gcc:latest

# 创建应用程序目录
RUN mkdir /usr/src/myapp

# 将本地src文件夹内的hello_world.cpp复制到容器内的/usr/src/myapp目录
COPY src/hello_world.cpp /usr/src/myapp

# 设置工作目录
WORKDIR /usr/src/myapp

# 使用g++编译hello_world.cpp，并链接C++标准库
RUN g++ hello_world.cpp 

# 运行编译后的程序
CMD ["./a.out"]
