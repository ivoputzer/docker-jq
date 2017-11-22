docker-jq
===
utility container for [jq](https://stedolan.github.io/jq/) based on [alpine linux](https://alpinelinux.org/).

### build image
```sh
docker build -t jq .
```

### pull image
```sh
docker pull ivoputzer/jq:latest
```

### add alias to your shell profile
```sh
alias jq="docker run --rm -i ivoputzer/jq $@"
```

### add alias to your fish config
```fish
alias jq "docker run --rm -i ivoputzer/jq $argv"
```
