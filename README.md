# OpenHands - Hướng dẫn cài đặt nhanh

## Giới thiệu

OpenHands là một nền tảng AI-driven development giúp bạn xây dựng và bảo trì phần mềm một cách dễ dàng. Gói này chứa các file cấu hình cần thiết để bạn có thể nhanh chóng cài đặt và chạy OpenHands trên máy của mình.

## Yêu cầu

- Docker
- Docker Compose

## Cài đặt nhanh

1. **Cập nhật API keys**:
   File `.env` đã được tạo sẵn, bạn chỉ cần cập nhật các API keys của mình:
   ```
   OPENAI_API_KEY=your_openai_api_key
   ANTHROPIC_API_KEY=your_anthropic_api_key
   GEMINI_API_KEY=your_gemini_api_key
   ```

2. **Build và chạy Docker container**:
   ```bash
   docker-compose up -d
   ```

3. **Truy cập OpenHands**:
   - Backend API: http://localhost:3000
   - Frontend UI: http://localhost:3001

4. **Để dừng container**:
   ```bash
   docker-compose down
   ```

## Cấu trúc thư mục

- `Dockerfile`: File cấu hình để build Docker image
- `docker-compose.yaml`: File cấu hình Docker Compose
- `.env`: File chứa các biến môi trường (đã được tạo sẵn, cần cập nhật API keys)
- `run_tests.sh`: Script để chạy test
- `HUONG_DAN_CAI_DAT.md`: Hướng dẫn cài đặt chi tiết

## Kiểm tra logs

```bash
docker-compose logs -f
```

## Lấy mã nguồn đầy đủ

Nếu bạn muốn truy cập mã nguồn đầy đủ của OpenHands, bạn có thể clone repository từ GitHub:

```bash
git clone https://github.com/All-Hands-AI/OpenHands.git
```

## Hướng dẫn chi tiết

Xem file `HUONG_DAN_CAI_DAT.md` để biết thêm chi tiết về cách cài đặt, cấu hình và sử dụng OpenHands.

## Hỗ trợ

Nếu bạn gặp vấn đề khi cài đặt hoặc sử dụng OpenHands, vui lòng tạo issue trên GitHub repository hoặc liên hệ với đội ngũ phát triển.