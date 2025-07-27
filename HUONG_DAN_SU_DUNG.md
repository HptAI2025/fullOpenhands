# Hướng dẫn sử dụng OpenHands

## 1. Tải gói cài đặt

Tải file `openhands-package.tar.gz` về máy của bạn.

## 2. Giải nén gói cài đặt

```bash
tar -xzvf openhands-package.tar.gz
cd openhands-package
```

## 3. Cập nhật API keys

Mở file `.env` và cập nhật các API keys của bạn:

```
OPENAI_API_KEY=your_openai_api_key
ANTHROPIC_API_KEY=your_anthropic_api_key
GEMINI_API_KEY=your_gemini_api_key
```

Bạn cần có ít nhất một API key để sử dụng OpenHands. Bạn có thể đăng ký API keys tại:
- OpenAI: https://platform.openai.com/
- Anthropic: https://www.anthropic.com/
- Google Gemini: https://ai.google.dev/

## 4. Cài đặt Docker và Docker Compose

Nếu bạn chưa cài đặt Docker và Docker Compose, hãy cài đặt chúng trước:

### Ubuntu/Debian:
```bash
# Cài đặt Docker
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Cài đặt Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.24.6/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

### Windows:
Tải và cài đặt Docker Desktop từ: https://www.docker.com/products/docker-desktop/

### macOS:
Tải và cài đặt Docker Desktop từ: https://www.docker.com/products/docker-desktop/

## 5. Build và chạy Docker container

```bash
docker-compose up -d
```

Lần đầu tiên chạy sẽ mất một chút thời gian để tải và build image.

## 6. Truy cập OpenHands

- Backend API: http://localhost:3000
- Frontend UI: http://localhost:3001

## 7. Kiểm tra logs

```bash
docker-compose logs -f
```

## 8. Dừng container

```bash
docker-compose down
```

## 9. Xử lý sự cố

### 9.1. Lỗi khi chạy Docker

Nếu bạn gặp lỗi khi chạy Docker, hãy kiểm tra:

- Docker và Docker Compose đã được cài đặt đúng cách
- Bạn có quyền chạy Docker (thêm user vào nhóm docker)
- Cổng 3000 và 3001 không bị sử dụng bởi ứng dụng khác

### 9.2. Lỗi API key

Nếu bạn gặp lỗi liên quan đến API key, hãy kiểm tra:

- API key đã được cấu hình đúng trong file `.env`
- API key còn hiệu lực và có đủ quyền

### 9.3. Lỗi khi build image

Nếu bạn gặp lỗi khi build image, hãy thử:

```bash
docker-compose build --no-cache
docker-compose up -d
```

## 10. Hỗ trợ

Nếu bạn gặp vấn đề khi cài đặt hoặc sử dụng OpenHands, vui lòng tạo issue trên GitHub repository hoặc liên hệ với đội ngũ phát triển.