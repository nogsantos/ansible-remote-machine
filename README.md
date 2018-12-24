# [Ansible remote machine][ansible]

Ansible remote machine host, default expose 22 port.

## Container

Criar o container pela imagem, executar no host

```shell
$ docker run -it --name remote-[number] nogsantos/ansible-remote-machine /bin/bash
```

#### Iniciar open ssh em background

```shell
# /usr/sbin/sshd -D &
```


##### Footer notes

>
> Final container size ~ `229MB`.
>
> The image is built on top of the most recently tagged `ubuntu:14.04` image and installs the following extra packages:
> - `vim.tiny`
> - `wget`
> - `sudo`
> - `net-tools`
> - `unzip`
> - `lsof`
> - `bash-completion`
> - `software-properties-common`
> - `ssh`
> - `openssh-server`

[ansible]:https://docs.ansible.com/ansible/latest/index.html "Ansible"
