# Poetry file

## Project management

- `poetry new backend` creates a **backend** and **tests** packages inside a backend project
  - you can change the package name if you want
  - I change the package name to src (java effect)
- `poetry init` expects the same structure created by `poetry new`

```bash
[project]
name = "backend"
version = "0.1.0"
description = ""
authors = [
    {name = "Authors name and email if you want"}
]
readme = "README.md"
requires-python = ">=3.11"
dependencies = [
    "fastapi (>=0.115.8,<0.116.0)",
    "uvicorn (>=0.34.0,<0.35.0)",
    "aiofiles (>=24.1.0,<25.0.0)"
]

[build-system]
requires = ["poetry-core>=2.0.0,<3.0.0"]
build-backend = "poetry.core.masonry.api"
```

## Dependency Management only

```bash
[tool.poetry]
name = "backend"
version = "0.1.0"
description = "Your description"
authors = ["authors name"]
readme = "README.md"
package-mode = false

[tool.poetry.dependencies]
python = "^3.11"
uvicorn = {extras = ["standard"], version = "^0.29.0"}
fastapi = "^0.110.1"
aiofiles = "^24.1.0"


[build-system]
requires = ["poetry-core"]
```
