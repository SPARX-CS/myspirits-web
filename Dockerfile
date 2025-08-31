FROM nginx:alpine
# Nginx のデフォルトconfを差し替え
COPY nginx.conf /etc/nginx/conf.d/default.conf
# 公開ファイルを配置（index.htmlや今後のwidget.js等）
COPY . /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
