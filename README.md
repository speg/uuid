# uuid

## How to build sqlite3 with the uuid extension?

On MacOS 11.2.3 the following works (after `shards install`):

````shell
uuid % crystal run src/uuid.cr 
e63fac52-ef8c-49a9-b5f2-3d6f436c4de8
```

However, I have yet to been able to build for linux.

A sample Dockerfile is included:

```shell
uuid % docker build -t uuid .
uuid % docker run uuid
Unhandled exception: no such function: uuid (SQLite3::Exception)
  from lib/sqlite3/src/sqlite3/statement.cr:81:5 in 'build_statement'
  from lib/db/src/db/statement.cr:59:5 in 'query_one:as'
  from src/uuid.cr:5:8 in '__crystal_main'
  from /usr/share/crystal/src/crystal/main.cr:110:5 in 'main'
  from src/env/__libc_start_main.c:94:2 in 'libc_start_main_stage2'
```

## How do I build this to include the uuid SQLITE3 extension?
