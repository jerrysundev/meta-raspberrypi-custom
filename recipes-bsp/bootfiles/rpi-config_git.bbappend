do_deploy:append:raspberrypi4-64-custom() {
    echo "device_tree=bcm2711-rpi-4-b-custom.dtb" >> $CONFIG

    echo "dtparam=act_led_trigger=default-on" >> $CONFIG
    echo "dtparam=act_led_activelow=off" >> $CONFIG
    echo "dtparam=pwr_led_trigger=none" >> $CONFIG
    echo "dtparam=pwr_led_activelow=off " >> $CONFIG

    # for camera only
    echo "camera_auto_detect=1" >> $CONFIG
    echo "dtoverlay=vc4-kms-v3d" >> $CONFIG
    echo "start_x=1" >> $CONFIG
    echo "gpu_mem=128 " >> $CONFIG
}
