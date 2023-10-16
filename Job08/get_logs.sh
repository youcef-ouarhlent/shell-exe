connection_number=$(grep "youcef" /var/log/auth.log | wc -l)

date=$(date +%d-%m-%Y-%H:%M)

echo "$connection_number : $date" > "backup/number_connection-$date.txt"
tar -czf "backup/number_connection-$date.tar" "backup/number_connection-$date.txt"
