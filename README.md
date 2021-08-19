# ColdQuanta DevOps Interview

Hello, if you're reading this it's probably because we're interested in hiring
you!

If at any point you have questions about this repo or test, please reach out to
[Noah Pederson](mailto:noah.pederson@coldquanta.com).

## About this repo

Within this repo, you will find 2 small web applications, a setup script
(`setup.sh`), a test file (`test.sh`), some extra scripts for bootstrapping,
and Dockerfiles for both apps.

The setup script creates a docker virtual network called `mynet` and launches a
postgres container with some flags to bootstrap it and attach to `mynet`.

**The password for the postgres database is `password123`**

You can choose to use the `setup.sh` script, or just reference it.

## Goal

The goal of this test is to determine your skill and experience in deploying
web services.

The end result should be `test.sh` being able to output "Hello, world!".

### Rules

Without modifying any of the `.py`, `.sh`, or `Dockerfile` files provided,
automate the setup and deployment of these 2 apps (and *optionally*, the
postgres database) such that a single command can be used to deploy this system
for use.

*You do not need to use the provided `Dockerfile`s if your solution does not
require them.*

While this is a simple example, please think about how you would scale this
system to 5 apps, 10 apps, and beyond. Does your solution involve high amounts of
overhead to add new apps?

**Be prepared to talk about your solution.**

In a follow up interview, we will discuss your solution, other potential ways to
accomplish the same goal, and some pro/con analysis to those solutions.
