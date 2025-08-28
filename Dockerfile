FROM nginx:alpine

# Copy file HTML vào thư mục Nginx
COPY index.html /usr/share/nginx/html/index.html

# Copy cấu hình nginx tùy chỉnh
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose cổng, Railway sẽ map vào biến $PORT
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
