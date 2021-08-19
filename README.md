# ColdQuanta Practical DevOps Interview Exercise

Hello esteemed colleague! If you're reading this we are looking forward to working with you and hope the interview process is going well so far!

If at any point you have questions about this repo or exercise, please reach out to
[Noah Pederson](mailto:noah.pederson@coldquanta.com).

## Contents of this repo

Here you will find 2 small web applications, a setup script
(`setup.sh`), a test script (`test.sh`), some extra scripts for bootstrapping,
and Dockerfiles for both apps.

The setup script creates a docker virtual network called `mynet` and launches a
postgres container with some flags to bootstrap it and attach to `mynet`.

**The password for the postgres database is set in `setup.sh`; the default is `password123`**

You can choose to use the `setup.sh` script, or just reference it.

## Goal

The goal of this exercise is to evaluate your approach to automating deployment of services and their dependencies. We'd love for you to show off any technologies and practices you like to use.

The system you design must automatically deploy these 2 apps (*optional stretch goal*: include the postgres database too) with a single command from the operator which you document in this README.

In your documentation, describe briefly how we would scale this system to 5 or 10 applications and beyond, and what amount of overhead is necessary to scale out to new apps and hosts.

At a minimum, the deployed service should be available and send "Hello, world!" in response to a query, as in `test.sh`.

## Scope & Expectations

* You shouldn't modify the `.py` files that implement the services. Assume these are the domain of some other team. Recommendations for improving the deployability of these services are welcome & in-scope.

* You aren't required to use the `Dockerfile`s or any of the scripts provided if they're unnecessary for your approach.

* You aren't required to actually deploy to a cloud or network-addressable server. A local container, VM, or similar is fine.

* Polish is nice but not required. In your docs and description you might discuss what bells & whistles you'd add given time.

## Evaluation

**Be prepared to demo & talk about your solution.**

In our follow-up interview, we will discuss your approach and ask you to compare it to other potential ways you might have accomplished the same goal, with some pro/con analysis. We will also ask how you'd explain your solution to a less experienced operator.
