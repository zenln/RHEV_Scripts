#!/bin/bash
HOSTNAME="https://something.rhvportal.com"
HOST="$HOSTNAME/ovirt-engine/api/users"
USERNAME=""
PASSWORD=""

if [[ $# -eq 0 ]] ; then
  echo "Please put in an file argument"
  echo "Usage script <UserListFileName>"
  exit
fi

namefile=$1

while IFS='' read -r USER; do
curl --request POST --header 'Version: 4' --header 'Content-Type: application/xml' --header 'Accept: application/xml' --user "${USERNAME}@IASTATE-AD:${PASSWORD}" --data "
<user>
  <principal>${USER}@service.principle</principal>
  <user_name>${USER}@iservice.principle@AUTZ-authz</user_name>
  <domain>
    <name>AURZ-authz</name>
  </domain>
</user>
" ${HOST}
done <  "$namefile"
