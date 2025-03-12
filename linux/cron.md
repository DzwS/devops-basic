1. system updates: 0 2 * * 1 apt-get update && apt-get upgrade -y
2. database backup: 0 3 * * * mysqldump -u root -pYourPassword database_name > /path/to/backup/db_$(date +\%F).sql
3. log rotation: 0 0 * * 0 logrotate /etc/logrotate.conf
4. disk usage alert: */30 * * * * df -h | awk '$5 > 80 {print}' | mail -s "Disk usage alert" you@example.com
5. clean temp files: 0 1 * * * find /tmp -type f -mtime +7 -exec rm {} \;
6. automated SSL certificate renewal: 0 0 1 * * certbot renew --quiet
7. restart web server: 0 4 * * 0 systemctl restart apache2
8. monitor website availability: */5  * * * * curl -s -o /dev/null -w "%{http_code}" https://example.com | grep -q "200" || echo "${date}: websiste down" >> /path/to/log/website.log
9. sync files to remote server: 0 1 * * * rsync -avz /local/directory/ user@remote:/remote/direcotry/
10. check ssl certificate expiration: 0 9 * * * /path/to/check_ssl.sh
11. 