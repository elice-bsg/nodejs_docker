# 경량화된 node image를 끌어와서
FROM node:18-alpine
# docker 작업 공간을 /opt/app 으로 지정하여
WORKDIR /opt/app
# wildcard를 이용하여 package.json, package-lock.json 을 가져와서
COPY package*.json ./
# 모든 의존성을 설치한 후
RUN npm install
# 디렉토리를 /opt/app 으로 복사하여
COPY . .
# 3500번 포트를 노출한 다음에
EXPOSE 3500
# 엔트리포인트를 정의한다
CMD ["npm", "start"]