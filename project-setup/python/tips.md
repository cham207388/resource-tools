<!-- markdownlint-disable MD033 -->
# Python Tips

- [Python 101](https://python101.pythonlibrary.org/index.html)
- [collections](https://docs.python.org/3/library/collections.html)
  - or just search for python collections
- [Pypi](https://pypi.org/)

Tip | Explanation |
---------|----------|
 mystring = "name"<br/> dir(mystring) | See all string methods <br/> the same can be applied to any datatype |

## Fixing imports

- use full path imports like from services.models import Book
- running a script from root
  - `PYTHONPATH=$(PWD)/src python3 src/services/scripts/init_db.py`

## Architecture incompatibity

### pydantic

- `pip install pydantic pydantic_core`
- `pip install pydantic pydantic_core --no-cache-dir`
