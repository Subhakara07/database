# database
inventory.inv
[dbservers]
oracle-db_d ansible_user=oracle ansible_ssh_private_key_file=/var/jenkins_home/.ssh/id_rsa
ansible-playbook -i inventory.inv ansible_sql.yml -vv
