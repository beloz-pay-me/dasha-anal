echo "# Installing python3, pip, git" > /home/vagrant/base-provision.log && sudo apt-get install -y python3.4 python3-pip git 2> /dev/null
echo "# Installing virtualenv" >> /home/vagrant/base-provision.log && sudo pip3 install virtualenv >> /home/vagrant/base-provision.log
echo "# Creating environment" >> /home/vagrant/base-provision.log && mkdir /home/vagrant/venv && mkdir /home/vagrant/venv/dasha
echo "# Creating dasha environment" >> /home/vagrant/base-provision.log && virtualenv --no-site-packages --python=python3 /home/vagrant/venv/dasha >> /home/vagrant/base-provision.log
echo "# Activating dasha environment" >> /home/vagrant/base-provision.log && source /home/vagrant/venv/dasha/bin/activate >> /home/vagrant/base-provision.log
echo "# Installing tools" >> /home/vagrant/base-provision.log && pip3 install plotly flask pandas numpy >> /home/vagrant/base-provision.log
echo "# Creating aliases for dasha" >> /home/vagrant/base-provision.log && echo "# set dasha aliases" >> /home/vagrant/.bashrc && echo "alias dasha-activate='source /home/vagrant/venv/dasha/bin/activate' && cd /home/vagrant/venv/dasha" >> /home/vagrant/.bashrc
