#!/usr/bin/make

.PHONY: default help install backup
default: help

help: ## Help
	@echo "Available commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install: ## Install
	./install.sh

backup: ## Backup configuration
	cp ~/.zsh_history ./home/.zsh_history

