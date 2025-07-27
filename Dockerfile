FROM python:3.12-slim

WORKDIR /app

# Cài đặt các dependencies cần thiết
RUN apt-get update && apt-get install -y \
    git \
    curl \
    make \
    build-essential \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Cài đặt Poetry
RUN pip install poetry

# Clone repository
RUN git clone https://github.com/All-Hands-AI/OpenHands.git .

# Cài đặt dependencies mà không cài đặt project
RUN poetry config virtualenvs.create false \
    && poetry install --no-interaction --no-ansi

# Build frontend
RUN cd frontend && npm install && npm run build

# Thiết lập biến môi trường
ENV PYTHONPATH=/app
ENV DEBUG=1
ENV RUNTIME=local

# Mở cổng
EXPOSE 3000
EXPOSE 3001

# Lệnh mặc định khi chạy container
CMD ["uvicorn", "openhands.server.listen:app", "--host", "0.0.0.0", "--port", "3000"]