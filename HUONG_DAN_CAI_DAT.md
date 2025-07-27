# Hướng dẫn cài đặt và chạy OpenHands

## 1. Yêu cầu hệ thống

- Docker
- Docker Compose
- Git (để clone repository)

## 2. Cài đặt

### 2.1. Clone repository

```bash
git clone https://github.com/All-Hands-AI/OpenHands.git
```

### 2.2. Tạo file .env

Tạo file `.env` trong thư mục gốc với nội dung sau:

```
# OpenHands Environment Configuration
# Điền API key của bạn vào đây

# LLM Configuration
OPENAI_API_KEY=your_openai_api_key
ANTHROPIC_API_KEY=your_anthropic_api_key
GEMINI_API_KEY=your_gemini_api_key

# Runtime Configuration
RUNTIME=local
SANDBOX_RUNTIME_CONTAINER_IMAGE=ghcr.io/all-hands-ai/runtime:0.50-nikolaik

# Debug Configuration
DEBUG=1

# Server Configuration
BACKEND_HOST=0.0.0.0
BACKEND_PORT=3000
FRONTEND_HOST=0.0.0.0
FRONTEND_PORT=3001
```

### 2.3. Build và chạy Docker container

```bash
docker-compose up -d
```

## 3. Sử dụng

### 3.1. Truy cập OpenHands

- Backend API: http://localhost:3000
- Frontend UI: http://localhost:3001

### 3.2. Kiểm tra logs

```bash
docker-compose logs -f
```

### 3.3. Dừng container

```bash
docker-compose down
```

## 4. Chạy test

Để chạy test, bạn có thể sử dụng script `run_tests.sh`:

```bash
./run_tests.sh
```

Hoặc chạy trực tiếp trong container:

```bash
docker exec -it openhands-app bash -c "cd /app && poetry run pytest tests/unit/test_*.py -v"
```

## 5. Cấu trúc thư mục

- `Dockerfile`: File cấu hình để build Docker image
- `docker-compose.yaml`: File cấu hình Docker Compose
- `.env`: File chứa các biến môi trường
- `workspace/`: Thư mục làm việc được mount vào container
- `.openhands/`: Thư mục chứa cấu hình và dữ liệu của OpenHands
- `run_tests.sh`: Script để chạy test

## 6. Xử lý sự cố

### 6.1. Lỗi khi chạy Docker

Nếu bạn gặp lỗi khi chạy Docker, hãy kiểm tra:

- Docker và Docker Compose đã được cài đặt đúng cách
- Bạn có quyền chạy Docker (thêm user vào nhóm docker)
- Cổng 3000 và 3001 không bị sử dụng bởi ứng dụng khác

### 6.2. Lỗi API key

Nếu bạn gặp lỗi liên quan đến API key, hãy kiểm tra:

- API key đã được cấu hình đúng trong file `.env`
- API key còn hiệu lực và có đủ quyền

### 6.3. Lỗi khi chạy test

Nếu bạn gặp lỗi khi chạy test, hãy kiểm tra:

- Dependencies đã được cài đặt đầy đủ
- Phiên bản Python là 3.12
- API key đã được cấu hình đúng