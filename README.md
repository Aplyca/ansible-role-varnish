# Ansible Role: Varnish 3.x

[![Build Status](https://travis-ci.org/Aplyca/ansible-role-varnish.svg?branch=master)](https://travis-ci.org/Aplyca/ansible-role-varnish)
[![Circle CI](https://circleci.com/gh/Aplyca/ansible-role-varnish.svg?style=svg)](https://circleci.com/gh/Aplyca/ansible-role-varnish)
Ansible Role that installs and configure Varnish 3.x on Debian/Ubuntu.

## Requirements

Use hash behavior for variables in ansible.cfg
See example: https://github.com/Aplyca/ansible-role-varnish/blob/master/tests/ansible.cfg
See official docs: http://docs.ansible.com/intro_configuration.html#hash-behaviour

## Installation

Using ansible galaxy:
```bash
ansible-galaxy install aplyca.Varnish
```
You can add this role as a dependency for other roles, add the role to the meta/main.yml file of your own role:
```yaml
dependencies:
  - { role: aplyca.Varnish }
```

## Role Variables

See default variables: https://github.com/Aplyca/ansible-role-varnish/blob/master/defaults/main.yml

## Dependencies

None.

## Testing
### Using Vagrant:

```bash
tests/vagrant.sh
```
### Using Docker:

```bash
tests/docker.sh
```
You should see the Varnish cache running on http://localhost:6081

## License

MIT / BSD

## Author Information

Mauricio Sánchez from Aplyca SAS (http://www.aplyca.com)
