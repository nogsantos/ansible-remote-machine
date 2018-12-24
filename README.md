# [Ansible remote machine][ansible]

Ansible remote machine host, default expose 22 port.

### Container

```shell
# ip route show
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