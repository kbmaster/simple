#!/bin/bash
status=$(curl -w "%{http_code}\\n" -H "Accept:application/json" -H "Content-Type:application/json"  https://radiant-crag-93001.herokuapp.com/service.php  -s -o /dev/null)

if [$status -neq 200]; then 
echo "El servicio no responde\n"
exit 1;
fi

exit 0;
