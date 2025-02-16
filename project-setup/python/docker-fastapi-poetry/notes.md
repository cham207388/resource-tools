# Notes

```bash
docker image build -t baicham/python-ingress:vubuntu .
docker psuh baicham/python-ingress:vubuntu
```

## Poetry

By default, poetry setup via `poetry new my-app` or `poetry init` assumes you might want to manage a project. If you just want to use poetry for dependency management only, then use [tool.poetry] instead of [project] on the first line.