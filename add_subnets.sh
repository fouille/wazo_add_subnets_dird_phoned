#!/bin/bash
usage() {
    cat >&2 <<EOF
Usage: $0 <Subnet address/xx or Subnets address/xx,address/xx> <debug yes/no>
Add subnets to access dird-phoned with physical phone, works only with UCEngine >= 19.11
EOF
        exit 1
}

if [ "$#" -ne 2 ]; then
   usage
fi

echo "Create/Update file ${1} ${2}"
DEBUG="${2}"
IP="${1}"
touch /etc/wazo-phoned/conf.d/010-subnets.yml
cat > /etc/wazo-phoned/conf.d/010-subnets.yml <<EOF
debug: ${DEBUG}
rest_api:
  authorized_subnets: [${IP}]
EOF
echo "Done"
echo "Restart service"
systemctl restart wazo-phoned
echo "Done, All is Good - Bye"
