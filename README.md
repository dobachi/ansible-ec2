# ansible-ec2

## Executable environment

- Ubuntu 18.04

## About contents

### ansible.cfg

An example of ansible.cfg based on [Official ansible.cfg Example] .
The differences are like the following.

- Use inventory in the project directory (not /etc/ansible/hosts)
- Add roles directoy in the project directory 

[Official ansible.cfg Example]: https://github.com/ansible/ansible/blob/devel/examples/ansible.cfg

###  hosts

An example of inventory file.
This inventory includes the top leve group and sample child group.

### group_vars

Most of variables used in roles are changed via hosts_vars.

`.gitignore` file includes `group_vars/production/99_private`.
You can write private variables (e.g. AMI ID) in the file.

### roles

- ec2_create
- ec2_start
- ec2_stop

### playbook directory

Playbooks for configuring and operating machines.

The sub-directries are separated intto `conf` and `op` .

`conf` includes playbooks for the configuration. e.g. installing middleware

`op` includes playbooks for the operation. e.g. starting middleware

## How to execute

```
$ ansible-playbook playbook/conf/example.yml -c local -b -K
$ ansible-playbook playbook/op/example.yml -c local -b -K
```

## License

GNU General Public License v3.0 or later

Please read COPYING.txt for the detail.

<!-- vim: set et ts=2 sw=2: -->
