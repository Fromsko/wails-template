# Initialize environment variables
GOOS ?= $(shell go env GOOS)
ARCH ?= auto
BUILD_SCRIPTS_DIR = scripts

# Help message
.PHONY: help
help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  default   Auto-detect platform (default)"
	@echo "  win       Build Windows version"
	@echo "  linux     Build Linux version"
	@echo "  mac       Build universal macOS version"
	@echo "  mac-arm   Build for Apple Silicon"
	@echo "  mac-intel Build for Intel chips"
	@echo "  help      Show this help message"

# Default target
.PHONY: default
default: check-scripts
	@$(MAKE) $(GOOS)

# Platform-specific targets
.PHONY: darwin
darwin: mac

.PHONY: linux
linux: check-scripts
	@echo "Building for Linux..."
	@$(BUILD_SCRIPTS_DIR)/build.sh

.PHONY: windows
windows: check-scripts
	@echo "Building for Windows..."
	@$(BUILD_SCRIPTS_DIR)/build-windows.sh

.PHONY: mac
mac: check-scripts
ifeq ($(ARCH),auto)
	@if [ "$$(uname -m)" = "arm64" ]; then \
		$(MAKE) mac-arm; \
	else \
		$(MAKE) mac-intel; \
	fi
else
	@$(BUILD_SCRIPTS_DIR)/build-macos.sh
endif

.PHONY: mac-arm
mac-arm: check-scripts
	@echo "Building for macOS (Apple Silicon)..."
	@$(BUILD_SCRIPTS_DIR)/build-macos-arm.sh

.PHONY: mac-intel
mac-intel: check-scripts
	@echo "Building for macOS (Intel)..."
	@$(BUILD_SCRIPTS_DIR)/build-macos-intel.sh

# Alias targets
.PHONY: win
win: windows

# Common checks
check-scripts:
	@chmod +x $(BUILD_SCRIPTS_DIR)/*.sh
	@if [ ! -d "$(BUILD_SCRIPTS_DIR)" ]; then \
		echo "Error: Build scripts directory missing"; \
		exit 1; \
	fi
