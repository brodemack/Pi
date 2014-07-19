sudo apt-get install -y motion
sudo apt-get install -y libjpeg62

mkdir -p ~/mmal

(cd ~/mmal/; wget https://www.dropbox.com/s/xdfcxm5hu71s97d/motion-mmal.tar.gz)
(cd ~/mmal/; tar -zxvf motion-mmal.tar.gz)
(cd ~/mmal/; wget https://raw.githubusercontent.com/brodemack/Pi/master/update-motion-conf.rb; ruby update-motion-conf.rb < motion-mmalcam.conf > motion-mmalcam2.conf; mv motion-mmalcam2.conf motion-mmalcam.conf)
(cd ~/mmal/; rm motion-mmal.tar.gz; rm update-motion-conf.rb;)
(cd ~/mmal/; mv motion motion-mmal)
(cd ~/mmal/; wget https://raw.githubusercontent.com/brodemack/Pi/master/templates/startmotion; chmod 755 startmotion)
(cd ~/mmal/; wget https://raw.githubusercontent.com/brodemack/Pi/master/templates/stopmotion; chmod 755 stopmotion)
