sudo systemctl stop crafty
cd /var/opt/minecraft/crafty/crafty-4
sudo su crafty
git reset --hard origin/master
cd /var/opt/minecraft/crafty
./update_crafty.sh
sudo systemctl start crafty
