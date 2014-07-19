def run

  file = STDIN.read

  file.gsub! /^width (\d+)$/, "width 640"
  file.gsub! /^height (\d+)$/, "height 480"

  file.gsub! /target_dir \/home\/pi/, "target_dir /home/pi/m-video/"
  file.gsub! /output_pictures on/, "output_pictures off"
  file.gsub! /text_left CAMERA %t/, "text_left Pi-cam %t"
  file.gsub! /logfile \/home\/pi\/motion.log/, "logfile  /home/pi/mmal/motion.log"

  puts file

end

run
