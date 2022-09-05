docker run --name openlakelet_ros_kinetic \
--mount type=bind,source=/home/xiaohu/workspace,target=/root/workspace \
--mount type=bind,source=/home/xiaohu/workspace/xiaohu_param/.bashrc,target=/root/.bashrc \
--mount type=bind,source=/home/xiaohu/workspace/xiaohu_param/rc.local,target=/etc/rc.local \
--mount type=bind,source=/dev/bus/usb,target=/dev/bus/usb \
--mount type=bind,source=/dev/video0,target=/dev/video0 \
--mount type=bind,source=/,target=/system_info \
-itd --privileged=true --net=host -p 6000:6000/udp -p 8000:8000/udp --restart=always ros:kinetic /bin/bash -c "/etc/rc.local;/bin/bash"

