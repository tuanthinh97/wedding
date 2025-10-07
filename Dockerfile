# Sử dụng image nginx nhẹ
FROM nginx:alpine

# Xóa nội dung mặc định của Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copy toàn bộ file HTML, CSS, hình ảnh... vào thư mục Nginx
COPY . /usr/share/nginx/html

# Expose port 80 để có thể truy cập từ bên ngoài container
EXPOSE 80

# Lệnh chạy mặc định của nginx
CMD ["nginx", "-g", "daemon off;"]