# pgtap-example

`pgTAP` (http://pgtap.org) usage example.

## Setup

    $ vagrant up
    $ cd ansible
    $ cp ansible.cfg.dist ansible.cfg
    $ ansible-galaxy install -r requirements.yml
    $ ansible-playbook -i inventory/vagrant playbook.yml

## Run tests

    $ vagrant ssh
    $ sudo -i -u pgtap
    $ cd /vagrant/
    $ pg_prove -v t/*.sql
