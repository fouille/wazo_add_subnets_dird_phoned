#!/bin/bash
usage() {
    cat >&2 <<EOF
Usage: $0 <Last IP address/xx> <debug yes/no>
Add subnets to access dird-phoned with physical phone
EOF
	exit 1
}

if [ "$#" -ne 2 ]; then
   usage
fi

echo "1/3 - Create file"

touch /etc/wazo-dird-phoned/conf.d/010-subnets.yml
cat > /etc/wazo-dird-phoned/conf.d/010-subnets.yml <<'EOF'
debug: ${2}
rest_api:
  authorized_subnets: ["${1}"]
EOF

echo "Done"
