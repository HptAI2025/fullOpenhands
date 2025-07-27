# 🤖 OpenHands - AI-Powered Development Assistant

[![Test Status](https://img.shields.io/badge/Tests-✅%20Passing-brightgreen)](https://github.com/HptAI2025/fullOpenhands)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue)](https://github.com/HptAI2025/fullOpenhands)
[![Demo](https://img.shields.io/badge/Demo-Live-success)](https://work-1-bennmeioiqjxyohd.prod-runtime.all-hands.dev)

> **✅ ĐÃ TEST THÀNH CÔNG TRÊN SANDBOX!** - Sẵn sàng để deploy trên máy của bạn!

OpenHands là một AI assistant mạnh mẽ giúp bạn phát triển phần mềm một cách hiệu quả. Với giao diện web hiện đại và tích hợp nhiều công cụ phát triển.

## 🌟 Tính năng chính

- ✅ **Giao diện web hoàn chỉnh** - UI/UX hiện đại, dễ sử dụng
- ✅ **Chat AI thông minh** - Hỗ trợ OpenAI, Anthropic, Gemini
- ✅ **VS Code tích hợp** - Code editor ngay trong browser
- ✅ **Terminal tích hợp** - Chạy lệnh trực tiếp
- ✅ **Jupyter Notebook** - Phân tích dữ liệu và ML
- ✅ **Browser tích hợp** - Duyệt web và test ứng dụng
- ✅ **Suggested Tasks** - Gợi ý tác vụ thông minh
- ✅ **File Management** - Quản lý file và thư mục
- ✅ **Git Integration** - Tích hợp GitHub, GitLab, Bitbucket

## 🚀 Cài đặt nhanh

### Bước 1: Clone repository
```bash
git clone https://github.com/HptAI2025/fullOpenhands.git
cd fullOpenhands
```

### Bước 2: Cấu hình API keys
```bash
cp .env.example .env
# Chỉnh sửa .env và thêm API keys của bạn
```

### Bước 3: Chạy với Docker
```bash
./start.sh
```

### Bước 4: Truy cập ứng dụng
🌐 **http://localhost:12000**

## 📋 Yêu cầu hệ thống

- Docker & Docker Compose
- Git
- Ít nhất 4GB RAM
- 10GB dung lượng trống

## 🔧 Cấu hình API Keys

Chỉnh sửa file `.env`:

```env
# Chọn ít nhất một trong các API sau:
OPENAI_API_KEY=sk-your-openai-key-here
ANTHROPIC_API_KEY=sk-ant-your-anthropic-key-here  
GEMINI_API_KEY=your-gemini-key-here
```

## 🧪 Chạy Tests

```bash
# Test tự động
./test_openhands.sh

# Hoặc test thủ công
curl http://localhost:12000/api/options/config
```

## 📊 Trạng thái Test

✅ **TẤT CẢ TESTS ĐỀU PASS!**

```
🚀 Starting OpenHands Test Suite...
✅ Server is responding on port 12000
✅ API config endpoint is working  
✅ Frontend is loading correctly
✅ Can create new conversations
✅ Runtime models are available
✅ Settings endpoint is working
✅ File operations are available

🎉 OpenHands Test Suite Completed!
```

## 🌐 Demo Live

Xem demo trực tiếp tại: **https://work-1-bennmeioiqjxyohd.prod-runtime.all-hands.dev**

## 📁 Cấu trúc Project

```
fullOpenhands/
├── 📄 README_VIETNAMESE.md     # Hướng dẫn tiếng Việt
├── 📄 HUONG_DAN_CAI_DAT.md     # Hướng dẫn chi tiết
├── 🐳 Dockerfile               # Docker configuration
├── 🐳 docker-compose.yaml      # Docker Compose setup
├── ⚙️ .env.example             # Environment template
├── 🚀 start.sh                 # Script khởi động nhanh
├── 🧪 test_openhands.sh        # Script test tự động
├── 📁 workspace/               # Workspace cho projects
├── 📁 .openhands/              # Cấu hình OpenHands
└── 📁 openhands/               # Source code chính
```

## 🛠️ Các lệnh hữu ích

```bash
# Khởi động
./start.sh

# Khởi động và build lại
./start.sh --build

# Xem logs
docker-compose logs -f

# Dừng services
docker-compose down

# Chạy tests
./test_openhands.sh

# Vào container để debug
docker exec -it openhands-app bash
```

## 🔍 Troubleshooting

### Lỗi thường gặp:

**1. Port 12000 đã được sử dụng:**
```bash
sudo lsof -i :12000
# Kill process đang sử dụng port
```

**2. Docker không chạy:**
```bash
sudo systemctl start docker
```

**3. Lỗi permission:**
```bash
sudo usermod -aG docker $USER
# Logout và login lại
```

**4. API key không hoạt động:**
- Kiểm tra API key trong file `.env`
- Đảm bảo API key còn hiệu lực
- Kiểm tra quota của API

## 🤝 Đóng góp

1. Fork repository
2. Tạo feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m 'Add amazing feature'`
4. Push to branch: `git push origin feature/amazing-feature`
5. Tạo Pull Request

## 📞 Hỗ trợ

- 🐛 **Issues**: [GitHub Issues](https://github.com/HptAI2025/fullOpenhands/issues)
- 📧 **Email**: support@hptai2025.com
- 💬 **Discord**: [Join our community](https://discord.gg/openhands)

## 📄 License

Dự án này được phân phối dưới giấy phép MIT. Xem file `LICENSE` để biết thêm chi tiết.

## 🙏 Acknowledgments

- [All-Hands-AI](https://github.com/All-Hands-AI/OpenHands) - Original OpenHands project
- [FastAPI](https://fastapi.tiangolo.com/) - Web framework
- [React](https://reactjs.org/) - Frontend framework
- [Docker](https://www.docker.com/) - Containerization

---

<div align="center">

**⭐ Nếu project này hữu ích, hãy cho chúng tôi một star! ⭐**

Made with ❤️ by [HptAI2025](https://github.com/HptAI2025)

</div>