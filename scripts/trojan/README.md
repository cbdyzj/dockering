# trojan

### Alias

```sh
alias trojan='docker run --rm --name trojan -v $HOME/trojan:/config:ro -p 9080:9080 trojangfw/trojan:1.14.1 trojan "$@"'
```

### Use trojan

```sh
trojan -c config.json
```
