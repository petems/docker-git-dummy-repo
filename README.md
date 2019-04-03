# git-dummy

> A git server with a dummy repo, with Nginx as the HTTP frontend and fast cgi wrapper for running the git http backend

## Usage

```
$ docker run -d -p "8080:80" petems/dummy-git-repo
$ git clone http://localhost:8080/dummy-repo.git
```

## Why?

Allows me to setup an example repository for testing gitsweeper
