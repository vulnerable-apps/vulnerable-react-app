# Vulnerable React App

A purposefully vulnerable application built with React (frontend) and Java Spring (backend). It is meant to be used for testing and learning about security vulnerabilities.

It is built using [reactvulna](https://github.com/vulnerable-apps/reactvulna) and [javulna](https://github.com/vulnerable-apps/javulna) by [edusecmachine](https://github.com/edu-secmachine/) with some light modifications to make them work.

# Running the app

## Prerequisites

* Have Docker and Docker Compose installed

## Running the app

* Clone the repository and update the Git submodules

```bash
git clone https://github.com/vulnerable-apps/vulnerable-react-app.git
cd vulnerable-react-app
git submodule update --remote --merge
```

* Build and run the app

```bash
docker-compose up -d
```

# References

* [vulnerable-apps/reactvulna](https://github.com/vulnerable-apps/reactvulna)
* [vulnerable-apps/javulna](https://github.com/vulnerable-apps/javulna)

