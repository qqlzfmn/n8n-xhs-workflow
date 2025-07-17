FROM alpine AS builder

RUN apk add --no-cache git
RUN git clone https://github.com/aki66938/xhs-toolkit.git

FROM ghcr.io/astral-sh/uv:python3.12-alpine

# 由于 xhs-toolkit 配置验证机制的问题，在使用远程环境时也会验证本地 chrome 是否存在，故创建一个占位符
RUN touch /usr/bin/google-chrome
# 即时使用远程环境，也需要安装 chromium-chromedriver
RUN apk add --no-cache chromium-chromedriver
# 复制 xhs-toolkit 到容器中
COPY --from=builder xhs-toolkit /app

WORKDIR /app
COPY xhs-toolkit.env .env
RUN uv sync

EXPOSE 58000

ENTRYPOINT [ "uv", "run", "xhs_toolkit.py" ]
CMD [ "server", "start" ]