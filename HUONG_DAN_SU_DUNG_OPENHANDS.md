# 🤖 HƯỚNG DẪN SỬ DỤNG OPENHANDS CHI TIẾT

## 📋 MỤC LỤC
1. [Giới thiệu OpenHands](#giới-thiệu-openhands)
2. [Cài đặt và khởi động](#cài-đặt-và-khởi-động)
3. [Giao diện và tính năng](#giao-diện-và-tính-năng)
4. [Trang quản trị Settings](#trang-quản-trị-settings)
5. [Khắc phục lỗi thường gặp](#khắc-phục-lỗi-thường-gặp)
6. [Tips và thủ thuật](#tips-và-thủ-thuật)

---

## 🌟 GIỚI THIỆU OPENHANDS

OpenHands là một AI assistant mạnh mẽ giúp bạn phát triển phần mềm một cách hiệu quả. Với giao diện web hiện đại và tích hợp nhiều công cụ phát triển.

### ✨ Tính năng chính:
- ✅ **Giao diện web hoàn chỉnh** - UI/UX hiện đại, dễ sử dụng
- ✅ **Chat AI thông minh** - Hỗ trợ OpenAI, Anthropic, Gemini
- ✅ **VS Code tích hợp** - Code editor ngay trong browser
- ✅ **Terminal tích hợp** - Chạy lệnh trực tiếp
- ✅ **Jupyter Notebook** - Phân tích dữ liệu và ML
- ✅ **Browser tích hợp** - Duyệt web và test ứng dụng
- ✅ **Suggested Tasks** - Gợi ý tác vụ thông minh
- ✅ **File Management** - Quản lý file và thư mục
- ✅ **Git Integration** - Tích hợp GitHub, GitLab, Bitbucket

---

## 🚀 CÀI ĐẶT VÀ KHỞI ĐỘNG

### 📋 Yêu cầu hệ thống:
- Docker & Docker Compose
- Git
- Ít nhất 4GB RAM
- 10GB dung lượng trống

### 🔧 Hướng dẫn cài đặt:

#### Bước 1: Clone repository
```bash
git clone https://github.com/HptAI2025/fullOpenhands.git
cd fullOpenhands
```

#### Bước 2: Cấu hình API keys
```bash
cp .env.example .env
# Chỉnh sửa .env và thêm API keys của bạn
```

**Nội dung file .env:**
```env
# Chọn ít nhất một trong các API sau:
OPENAI_API_KEY=sk-your-openai-key-here
ANTHROPIC_API_KEY=sk-ant-your-anthropic-key-here  
GEMINI_API_KEY=your-gemini-key-here

# Cấu hình khác (đã có sẵn)
RUNTIME=local
DEBUG=1
BACKEND_HOST=0.0.0.0
BACKEND_PORT=12000
DISABLE_AUTH=true
ENABLE_SECURITY=false
```

#### Bước 3: Chạy với Docker
```bash
./start.sh
```

#### Bước 4: Truy cập ứng dụng
🌐 **http://localhost:12000**

### 🧪 Kiểm tra hoạt động:
```bash
# Chạy test tự động
./test_openhands.sh

# Hoặc test thủ công
curl http://localhost:12000/api/options/config
```

---

## 🎨 GIAO DIỆN VÀ TÍNH NĂNG

### 📱 Giao diện chính:

#### 1. **Sidebar trái:**
- 🏠 **Home** - Trang chủ
- 💬 **Start new conversation** - Tạo cuộc trò chuyện mới
- 📚 **Conversations** - Lịch sử cuộc trò chuyện
- 📖 **Documentation** - Tài liệu hướng dẫn
- ⚙️ **Settings** - Cài đặt hệ thống
- 👤 **Account settings** - Cài đặt tài khoản

#### 2. **Khu vực chính:**
- 💬 **Chat Interface** - Giao diện chat với AI
- 📝 **Text Input** - Ô nhập tin nhắn
- 🎯 **Suggested Tasks** - Gợi ý tác vụ:
  - "Increase test coverage"
  - "Auto-merge PRs" 
  - "Fix security vulnerabilities"
  - "Optimize performance"

#### 3. **Tabs công cụ:**
- 📄 **Changes** - Xem thay đổi code
- 💻 **VS Code** - Code editor tích hợp
- 🖥️ **Terminal** - Command line interface
- 📊 **Jupyter** - Jupyter notebook
- 🌐 **App** - Xem ứng dụng đang chạy
- 🔍 **Browser** - Trình duyệt tích hợp

### 🔧 Cách sử dụng từng tính năng:

#### 💬 **Chat với AI:**
1. Nhập câu hỏi hoặc yêu cầu vào ô chat
2. AI sẽ phân tích và đưa ra giải pháp
3. Có thể yêu cầu viết code, debug, giải thích

#### 💻 **VS Code tích hợp:**
1. Click tab "VS Code"
2. Tạo/mở file code
3. Edit code với syntax highlighting
4. Auto-completion và IntelliSense

#### 🖥️ **Terminal:**
1. Click tab "Terminal"
2. Chạy các lệnh Linux/bash
3. Cài đặt packages, build project
4. Git operations

#### 📊 **Jupyter Notebook:**
1. Click tab "Jupyter"
2. Tạo notebook mới
3. Viết Python code, data analysis
4. Visualize data với matplotlib, plotly

---

## ⚙️ TRANG QUẢN TRỊ SETTINGS

Truy cập qua biểu tượng **⚙️ Settings** ở sidebar trái.

### 🔧 Các trang quản trị:

#### 1. 🤖 **LLM Settings** (`/settings`)
**Mục đích:** Cấu hình AI Models và API Keys

**Các tùy chọn:**
- **Model Selection:** Chọn model AI (GPT-4, Claude, Gemini)
- **API Keys:** Thêm/sửa API keys
- **Temperature:** Điều chỉnh độ sáng tạo (0.0-1.0)
- **Max Tokens:** Giới hạn độ dài phản hồi
- **System Prompt:** Tùy chỉnh prompt hệ thống

**Cách cấu hình:**
1. Chọn AI Provider (OpenAI/Anthropic/Google)
2. Nhập API Key
3. Chọn Model phù hợp
4. Điều chỉnh Temperature (khuyến nghị: 0.7)
5. Click "Save Changes"

#### 2. 🔌 **MCP Settings** (`/settings/mcp`)
**Mục đích:** Model Context Protocol - Kết nối công cụ bên ngoài

**Tính năng:**
- **MCP Servers:** Danh sách servers đã kết nối
- **External Tools:** Công cụ bên ngoài
- **Plugin Management:** Quản lý plugins
- **Connection Status:** Trạng thái kết nối

**Cách sử dụng:**
1. Click "Add MCP Server"
2. Nhập server URL và credentials
3. Test connection
4. Enable/disable theo nhu cầu

#### 3. 🔗 **Integrations** (`/settings/integrations`)
**Mục đích:** Tích hợp với các dịch vụ Git

**Các tích hợp:**
- **GitHub Integration:** Kết nối GitHub
- **GitLab Integration:** Kết nối GitLab  
- **Bitbucket Integration:** Kết nối Bitbucket
- **OAuth Settings:** Cấu hình xác thực

**Cách kết nối GitHub:**
1. Click "Connect GitHub"
2. Nhập GitHub Token hoặc OAuth
3. Authorize permissions
4. Test connection
5. Chọn repositories muốn truy cập

#### 4. ⚙️ **Application** (`/settings/app`)
**Mục đích:** Cài đặt ứng dụng chung

**Các tùy chọn:**
- **Language:** Chọn ngôn ngữ giao diện (English/Vietnamese)
- **Usage Data:** Bật/tắt gửi dữ liệu thống kê
- **Sound Notifications:** Bật/tắt âm thanh thông báo
- **Budget Control:** Giới hạn chi phí per conversation (USD)

**Khuyến nghị cài đặt:**
- Language: English (ổn định nhất)
- Usage Data: Disabled (bảo mật)
- Sound: Enabled (tiện lợi)
- Budget: $10-50 (tùy nhu cầu)

#### 5. 🔐 **Secrets** (`/settings/secrets`)
**Mục đích:** Quản lý thông tin bảo mật

**Tính năng:**
- **API Keys Management:** Quản lý keys an toàn
- **Environment Variables:** Biến môi trường
- **Secure Storage:** Lưu trữ thông tin nhạy cảm
- **Access Control:** Kiểm soát quyền truy cập

**Cách thêm secret:**
1. Click "Add a new secret"
2. Nhập Name và Description
3. Nhập Value (sẽ được mã hóa)
4. Set permissions
5. Save

---

## 🔧 KHẮC PHỤC LỖI THƯỜNG GẶP

### ❌ **Lỗi 1: Workspace không phải Git Repository**

**Triệu chứng:** 
```
"Your current workspace is not a git repository. 
Ask OpenHands to initialize a git repo to activate this UI."
```

**Nguyên nhân:**
- Workspace chưa được khởi tạo Git
- Đường dẫn workspace không đúng

**Cách khắc phục:**

**Phương án 1: Dùng OpenHands Chat**
```
Trong chat box, gõ:
"Please initialize a git repository in the current workspace"
```

**Phương án 2: Khởi tạo Git thủ công**
```bash
# Vào Terminal tab trong OpenHands
cd /workspace
git init
echo "# My OpenHands Workspace" > README.md
git add .
git commit -m "Initial commit"
```

**Phương án 3: Clone repository có sẵn**
```bash
cd /workspace
git clone https://github.com/your-username/your-repo.git
cd your-repo
```

### ❌ **Lỗi 2: API Key không hoạt động**

**Triệu chứng:**
- Chat không phản hồi
- Lỗi "Invalid API Key"
- Lỗi "Quota exceeded"

**Cách khắc phục:**
1. Kiểm tra API key trong Settings > LLM
2. Verify key còn hiệu lực trên trang provider
3. Kiểm tra quota/billing
4. Thử key khác nếu có

### ❌ **Lỗi 3: Port 12000 bị chiếm**

**Triệu chứng:**
```
Error: Port 12000 is already in use
```

**Cách khắc phục:**
```bash
# Tìm process đang dùng port
sudo lsof -i :12000

# Kill process
sudo kill -9 <PID>

# Hoặc đổi port trong docker-compose.yaml
ports:
  - "12001:12000"  # Đổi từ 12000 sang 12001
```

### ❌ **Lỗi 4: Docker không chạy**

**Triệu chứng:**
```
Cannot connect to the Docker daemon
```

**Cách khắc phục:**
```bash
# Start Docker service
sudo systemctl start docker

# Enable auto-start
sudo systemctl enable docker

# Add user to docker group
sudo usermod -aG docker $USER
# Logout và login lại
```

### ❌ **Lỗi 5: Memory không đủ**

**Triệu chứng:**
- Ứng dụng chậm
- Container bị kill
- Out of memory errors

**Cách khắc phục:**
1. Tăng RAM cho Docker (ít nhất 4GB)
2. Đóng các ứng dụng khác
3. Restart Docker service
4. Optimize Docker settings

---

## 💡 TIPS VÀ THỦ THUẬT

### 🚀 **Tips sử dụng hiệu quả:**

#### 1. **Chat với AI:**
- **Câu hỏi cụ thể:** "Help me debug this Python function" thay vì "Fix my code"
- **Cung cấp context:** Paste code, error messages, requirements
- **Yêu cầu từng bước:** "Step by step guide to deploy this app"
- **Sử dụng markdown:** Để format code, lists, headers

#### 2. **VS Code Integration:**
- **Keyboard shortcuts:** Ctrl+S (save), Ctrl+F (find), Ctrl+H (replace)
- **Multi-cursor:** Alt+Click để tạo nhiều cursor
- **Command Palette:** Ctrl+Shift+P để mở command palette
- **File Explorer:** Ctrl+Shift+E để toggle file explorer

#### 3. **Terminal Usage:**
- **Multiple tabs:** Mở nhiều terminal tabs
- **History:** Dùng ↑↓ để xem lịch sử lệnh
- **Auto-completion:** Tab để auto-complete
- **Copy/Paste:** Ctrl+Shift+C/V trong terminal

#### 4. **Jupyter Notebooks:**
- **Shortcuts:** Shift+Enter (run cell), A (insert above), B (insert below)
- **Magic commands:** %time, %matplotlib inline, %load_ext
- **Export:** File > Download as > HTML/PDF
- **Variables:** Dùng %whos để xem variables

### 🎯 **Best Practices:**

#### 1. **Project Organization:**
```
workspace/
├── projects/
│   ├── project1/
│   ├── project2/
├── scripts/
├── docs/
└── temp/
```

#### 2. **Git Workflow:**
```bash
# Luôn tạo branch mới cho feature
git checkout -b feature/new-feature

# Commit thường xuyên với message rõ ràng
git commit -m "Add user authentication feature"

# Push và tạo PR
git push origin feature/new-feature
```

#### 3. **API Key Security:**
- Không commit API keys vào Git
- Sử dụng Secrets management
- Rotate keys định kỳ
- Monitor usage và billing

#### 4. **Performance Optimization:**
- Đóng tabs không dùng
- Clear browser cache định kỳ
- Restart container khi cần
- Monitor memory usage

### 🔍 **Debugging Tips:**

#### 1. **Check Logs:**
```bash
# Docker logs
docker-compose logs -f

# Application logs
tail -f logs/openhands.log

# Browser console
F12 > Console tab
```

#### 2. **Network Issues:**
```bash
# Test connectivity
curl http://localhost:12000/health

# Check ports
netstat -tulpn | grep 12000

# DNS resolution
nslookup localhost
```

#### 3. **Performance Monitoring:**
```bash
# Docker stats
docker stats

# System resources
htop
free -h
df -h
```

---

## 📞 HỖ TRỢ VÀ LIÊN HỆ

### 🆘 **Khi cần hỗ trợ:**

1. **Kiểm tra logs:** `docker-compose logs -f`
2. **Chạy test:** `./test_openhands.sh`
3. **Restart service:** `docker-compose restart`
4. **Check documentation:** README_VIETNAMESE.md

### 📧 **Liên hệ:**
- **GitHub Issues:** https://github.com/HptAI2025/fullOpenhands/issues
- **Email:** support@hptai2025.com
- **Repository:** https://github.com/HptAI2025/fullOpenhands.git

### 🌐 **Tài nguyên hữu ích:**
- **Demo Live:** https://work-1-bennmeioiqjxyohd.prod-runtime.all-hands.dev
- **Original OpenHands:** https://github.com/All-Hands-AI/OpenHands
- **Documentation:** https://docs.all-hands.dev/

---

## 📄 PHỤ LỤC

### 🔧 **Cấu trúc Project:**
```
fullOpenhands/
├── 📄 README_VIETNAMESE.md     # Hướng dẫn tiếng Việt
├── 📄 HUONG_DAN_CAI_DAT.md     # Hướng dẫn chi tiết
├── 📄 HUONG_DAN_SU_DUNG_OPENHANDS.md  # File này
├── 🐳 Dockerfile               # Docker configuration
├── 🐳 docker-compose.yaml      # Docker Compose setup
├── ⚙️ .env.example             # Environment template
├── 🚀 start.sh                 # Script khởi động nhanh
├── 🧪 test_openhands.sh        # Script test tự động
├── 📁 workspace/               # Workspace cho projects
├── 📁 .openhands/              # Cấu hình OpenHands
└── 📁 openhands/               # Source code chính
```

### 🛠️ **Các lệnh hữu ích:**
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

# Backup workspace
tar -czf workspace-backup.tar.gz workspace/

# Restore workspace
tar -xzf workspace-backup.tar.gz
```

### 📊 **System Requirements:**
- **CPU:** 2+ cores (khuyến nghị 4+ cores)
- **RAM:** 4GB minimum (khuyến nghị 8GB+)
- **Storage:** 10GB free space
- **Network:** Stable internet cho API calls
- **OS:** Linux, macOS, Windows với WSL2

---

**🎉 Chúc bạn sử dụng OpenHands hiệu quả và thành công!**

*Tài liệu được cập nhật: 28/07/2025*
*Version: 1.0*
*Tác giả: HptAI2025 Team*