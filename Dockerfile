FROM node:18-alpine3.15

RUN apk add git chromium
RUN yarn global add @getgauge/cli taiko

ENV TAIKO_BROWSER_ARGS=--no-sandbox,--start-maximized,--disable-dev-shm-usage
ENV TAIKO_SKIP_DOCUMENTATION=true
ENV headless_chrome=true
ENV gauge_screenshots_dir=./reports/screenshots
