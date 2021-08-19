# DB App

This is a simple web app that pulls a response from a postgres database and
returns it.

## Configuration

The following environment variables are used for configuration:

* `POSTGRES_HOST` - the hostname of the postgres database to connect to.
  Defaults to `postgres`
* `POSTGRES_PASS` - *required*. The password used to authenticate to the postgres database.The only configuration for this app is `POSTGRES_PASSWORD` which must be set as
an environment variable.

---

Note: the postgres password is set to `password123` for testing.
