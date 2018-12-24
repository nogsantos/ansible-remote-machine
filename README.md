# [Ansible][ansible] host

Host default para [Ansible][ansible]. Open ssh server expondo a porta 22 e python 2.7 instalado.

## Container

Criar o container pela imagem, executar no host

```shell
$ docker run -it --name host-[number] nogsantos/ansible-host /bin/bash
```

Expondo a porta `80`, mapeando para a `8080` no host

```shell
$ docker run -it -p 8080:80 --name host-[number] nogsantos/ansible-host /bin/bash
```

#### Inicializar open ssh em background

##### Dentro do container

Inicializar o `ssh`

```shell
# /usr/sbin/sshd -D &
```

Verificar se está rodando

```shell
# service ssh status
* sshd is running
```

##### Fora do container, no host

Inicializar o `ssh`

```shell
docker exec -d host-1 /usr/sbin/sshd -D
```

Verificar se está rodando

```shell
docker exec -it host-1 service ssh status bash
```

##### Footer notes

>
> Final container size ~ `421MB`.
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
> - `python2.7`

[ansible]:https://docs.ansible.com/ansible/latest/index.html "Ansible"
