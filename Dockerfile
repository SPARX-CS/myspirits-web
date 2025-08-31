FROM nginx:alpine
EXPOSE 8080
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
CMD ["nginx","-g","daemon off;"]
