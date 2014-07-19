Pi
==


# Setup

For a standard setup run the following command

```
bash <(curl -s https://raw.githubusercontent.com/brodemack/Pi/master/ri-setup.sh)
```

# Motion - Security Camera

```
bash <(curl -s https://raw.githubusercontent.com/brodemack/Pi/master/motion-setup.sh)
```

## On Start Up

```
crontab -e
@reboot cd ~/mmal; bash startmotion
```


##Config

The following values will be set with the automated installation, these configs are just for notes

```
width 640
height 480
target_dir /home/pi/m-video
output_pictures off
text_left Pi-cam %t
logfile  /home/pi/mmal/motion.log
```
