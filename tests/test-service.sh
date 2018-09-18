#!/bin/bash

echo "Test service!!"

status=$(curl -w "%{http_code}\\n" -H "Accept:application/json" -H "Content-Type:application/json"  https://radiant-crag-93001.herokuapp.com/service.php  -s -o /dev/null)

echo "Status $status"

if [ "$status" == "200" ]; then 
echo "El servicio no responde\n"
exit 1;
fi

exit 0;
