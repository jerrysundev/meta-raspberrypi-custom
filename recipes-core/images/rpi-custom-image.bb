# Base this image on rpi-test-image
include recipes-core/images/rpi-test-image.bb

# add ssh server
IMAGE_INSTALL:append = " openssh openssh-sftp-server"

#no need x11-sato splash
IMAGE_FEATURES += "x11-base"
# IMAGE_INSTALL:append = " xserver-xorg xf86-video-fbdev xinit matchbox-terminal mini-x-session matchbox-wm xf86-video-fbdev"

IMAGE_INSTALL += "imagemagick"
# IMAGE_INSTALL:append = " util-linux"

IMAGE_INSTALL += "libcamera v4l-utils"
#IMAGE_INSTALL += "libcamera libcamera-apps v4l-utils"

# IMAGE_INSTALL += "python3-yolov5"

IMAGE_INSTALL  += "  ffmpeg"
IMAGE_INSTALL += " opencv opencv-apps python3-opencv python3-pip"

IMAGE_INSTALL:append = " tensorflow-lite"
