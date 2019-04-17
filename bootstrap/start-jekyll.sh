#!/usr/bin/env bash
sudo yum -y install git
firewall-cmd --add-port=4000/tcp
firewall-cmd --reload

gem install jekyll

cd /vagrant 

if [ ! -f _config.yml ]; then
	bundle exec jekyll new jekyll
fi

bundle install
bundle exec jekyll serve --incremental --detach --host=0.0.0.0