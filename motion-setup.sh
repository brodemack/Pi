sudo apt-get install -y motion
sudo apt-get install -y libjpeg62

mkdir -p ~/mmal

(cd ~/mmal/; wget https://www.dropbox.com/s/xdfcxm5hu71s97d/motion-mmal.tar.gz)
(cd ~/mmal/; tar -zxvf motion-mmal.tar.gz)
(cd ~/mmal/; wget https://raw.githubusercontent.com/brodemack/Pi/master/update-motion-conf.rb; ruby update-motion-conf.rb < motion-mmalcam.conf > motion-mmalcam.conf)
