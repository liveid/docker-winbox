  
DOCKER ?= docker
TARGET ?= tonycn/novnc-winbox

all:
	@echo "Building ${TARGET}"
	$(DOCKER) build -t $(TARGET) -f Dockerfile .

