#!/bin/bash

# OpenHands Quick Start Script
echo "🚀 Starting OpenHands..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Check if .env file exists
if [ ! -f .env ]; then
    print_warning ".env file not found. Creating from .env.example..."
    if [ -f .env.example ]; then
        cp .env.example .env
        print_info "Please edit .env file and add your API keys before running again."
        print_info "Required: OPENAI_API_KEY, ANTHROPIC_API_KEY, or GEMINI_API_KEY"
        exit 1
    else
        print_error ".env.example file not found. Please create .env manually."
        exit 1
    fi
fi

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    print_error "Docker is not running. Please start Docker first."
    exit 1
fi

# Create necessary directories
print_info "Creating workspace directories..."
mkdir -p workspace .openhands

# Check if we should build or just run
if [ "$1" = "--build" ] || [ ! "$(docker images -q openhands:latest 2> /dev/null)" ]; then
    print_info "Building OpenHands Docker image..."
    docker-compose build
    if [ $? -ne 0 ]; then
        print_error "Failed to build Docker image"
        exit 1
    fi
    print_success "Docker image built successfully"
fi

# Start the services
print_info "Starting OpenHands services..."
docker-compose up -d

if [ $? -eq 0 ]; then
    print_success "OpenHands started successfully!"
    echo ""
    echo "🌐 Access OpenHands at: http://localhost:12000"
    echo "📊 To view logs: docker-compose logs -f"
    echo "🛑 To stop: docker-compose down"
    echo ""
    print_info "Waiting for services to be ready..."
    sleep 10
    
    # Test if service is ready
    if curl -s http://localhost:12000 > /dev/null; then
        print_success "OpenHands is ready! 🎉"
        echo ""
        echo "🔗 Open your browser and go to: http://localhost:12000"
    else
        print_warning "Service might still be starting. Please wait a moment and try accessing http://localhost:12000"
    fi
else
    print_error "Failed to start OpenHands"
    exit 1
fi