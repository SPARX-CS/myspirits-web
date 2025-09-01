FROM nginx:alpine
RUN rm -f /etc/nginx/conf.d/*                   # 既存のconfを必ず消す
COPY nginx.conf /etc/nginx/conf.d/default.conf  # 自前のconfに差し替え
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
