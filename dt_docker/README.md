## Dotfiles in Continer

Default user is ohad. You can change it using build arg (example below).  
Based on Ubuntu 20.04.

### Build

```bash
docker build -t dev_env .
```

### Deploy

```bash
docker run -it --rm dev_env
```

### Deployment example
Mind the USER argument in the build command, you can change it to whatever you want.
```bash
❯ docker build -t dev_env --build-arg USER=ohad2 -q .
sha256:91418e8ca5ab7166a4bd068e26f1470d95f760cdd0d9bd738184d494e28297e0
❯ docker run -it --rm dev_env
[powerlevel10k] fetching gitstatusd .. [ok]
❯ id
uid=5501(ohad2) gid=5501(ohad2) groups=5501(ohad2),27(sudo)
```
