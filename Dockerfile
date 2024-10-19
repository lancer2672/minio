# Sử dụng hình ảnh chính thức của MinIO từ Docker Hub
FROM minio/minio

# Thiết lập thư mục để chứa dữ liệu
ENV MINIO_DATA /data

# Cấu hình để chạy MinIO
# Bạn có thể thay đổi MINIO_ACCESS_KEY và MINIO_SECRET_KEY thành giá trị của riêng bạn
ENV MINIO_ACCESS_KEY=myaccesskey
ENV MINIO_SECRET_KEY=mysecretkey

# Chạy MinIO với chế độ server và lưu trữ dữ liệu trong thư mục đã chỉ định
ENTRYPOINT ["minio", "server", "/data"]
