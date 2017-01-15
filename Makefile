.PHONY: install

TARGET_DIR := $$HOME/.local/bin

install: $(TARGET_DIR)
	@cp -v s/* $(TARGET_DIR)/
ifeq ($(shell echo $$PATH | grep $(TARGET_DIR)),)
	@echo "Add \"$(TARGET_DIR)\" to your path!"
endif

$(TARGET_DIR):
	mkdir -p $(TARGET_DIR)
