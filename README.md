# wazo_add_subnets_dird_phoned
add subnets in wazo-dird-phoned for access directory with physical phone 

<strong>INFO</strong> : Work only Wazo UC Engine >= 19.11

# Usage single subnet

Execute : <code>add_subnets.sh IP/MASK DEBUG(yes/no)<br></code><br>
Exemple : <code>add_subnets.sh 10.10.10.10/24 yes<br></code>
<br>
```console
foo@bar:~$  cd /tmp
foo@bar:~$  wget https://raw.githubusercontent.com/fouille/wazo_add_subnets_dird_phoned/master/add_subnets.sh
foo@bar:~$  chmod +x add_subnets.sh
foo@bar:~$  ./add_subnets.sh 10.10.10.10/24 yes
```

# Usage single multi subnets

Execute : <code>add_subnets.sh "IP/MASK, IP/MASK..." DEBUG(yes/no)<br></code><br>
Exemple : <code>add_subnets.sh "10.10.10.10/24, 1.1.1.1/24" yes<br></code>
<br>
```console
foo@bar:~$  cd /tmp
foo@bar:~$  wget https://raw.githubusercontent.com/fouille/wazo_add_subnets_dird_phoned/master/add_subnets.sh
foo@bar:~$  chmod +x add_subnets.sh
foo@bar:~$  ./add_subnets.sh "10.10.10.10/24, 1.1.1.1/24" yes
```

# Result File 

<strong>Write file</strong> : <code>/etc/wazo-dird-phoned/conf.d/010-subnets.yml</code><br>
<br>
```data
debug: yes
rest_api:
  authorized_subnets: ["0.0.0.0/0"]
```
