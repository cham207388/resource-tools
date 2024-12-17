# Makefile

## Install

```bash
brew install make
```

## Example Makefile

```bash
.PHONY: help

help: ## Show this help message with aligned shortcuts, descriptions, and commands
 @awk 'BEGIN {FS = ":"; printf "\033[1m%-20s %-40s %s\033[0m\n", "Target", "Description", "Command"} \
 /^[a-zA-Z_-]+:/ { \
  target=$$1; \
  desc=""; cmd="(no command)"; \
  if ($$2 ~ /##/) { sub(/^.*## /, "", $$2); desc=$$2; } \
  getline; \
  if ($$0 ~ /^(\t|@)/) { cmd=$$0; sub(/^(\t|@)/, "", cmd); } \
  printf "%-20s %-40s %s\n", target, desc, cmd; \
 }' $(MAKEFILE_LIST)

test-cov:
 pytest --cov=.
```

## Usage

```bash
make help
make test-cov
```

| Command | Description   |
|---------|---------------|
| make help | show help    |
| make test-cov | run tests with coverage |
