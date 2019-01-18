```
sudo apt-get install python3-pip python3-dev
sudo apt-get install apache2 libapache2-mod-wsgi-py3
pip3 install flask flask_restful
```
FLASKAPPS goes under /var/www

Remove or rename /var/www/html

flaskapp.conf goes under /etc/apache2/sites-available

Change SERVERNAME to your server ip address.

( a way to  get the server ip  is curl ipinfo.io/ip )

```
a2enmod wsgi
a2ensite helloworldapp
service apache2 restart
```
