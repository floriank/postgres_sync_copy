# postgres_sync_copy
A demonstration of using PostgreSQL copy to replace file_fdw

## Setup

You can either use `docker-compose` or a native setup, however, with the native setup, you need to setup your own PostgreSQL (which you can also do via `docker` ;-))

However, for `docker-compose`:

```
$ docker-compose up -d
```

Then:

```
$ docker-compose run app mix ecto.migrate
```

and

```
$ docker-compose run app iex -S mix
```

to get a console.

The included PostgreSQL binds locally at port 5432 - if you have trouble there, something else might be running already.

