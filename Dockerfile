FROM nginx:alpine

# SPA用設定
COPY nginx.conf /etc/nginx/conf.d/default.conf

# ドキュメントルートへ配置
COPY index.html /usr/share/nginx/html/index.html
COPY public/ /usr/share/nginx/html/  # publicが無ければこの行は削除OK

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
