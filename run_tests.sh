#!/bin/bash

# Script để chạy test cho OpenHands

set -e

# Đường dẫn đến thư mục OpenHands
OPENHANDS_DIR="$PWD/OpenHands"

# Kiểm tra xem thư mục OpenHands có tồn tại không
if [ ! -d "$OPENHANDS_DIR" ]; then
  echo "Thư mục OpenHands không tồn tại. Đang clone từ GitHub..."
  git clone https://github.com/All-Hands-AI/OpenHands.git
  cd OpenHands
else
  cd "$OPENHANDS_DIR"
fi

# Cài đặt dependencies
echo "Cài đặt dependencies..."
pip install poetry
poetry install

# Chạy các bài test đơn vị
echo "Chạy các bài test đơn vị..."
poetry run pytest tests/test_fileops.py -v
poetry run pytest tests/unit/test_config.py -v
poetry run pytest tests/unit/test_json.py -v

# Chạy thêm các bài test khác nếu cần
# poetry run pytest tests/unit/test_*.py -v

echo "Hoàn thành chạy test!"