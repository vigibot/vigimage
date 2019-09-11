# Make your own Vigibot.com raspberry PI robot

## Automatic Raspbian image customizer for Vigibot.com

### Everything is already done

- You can directly jump to the "Windows or Linux headless installation"

### Prerequisites

- apt install -y git wget unzip kpartx qemu-user-static binfmt-support

### Image generation

- git clone https://github.com/vigibot/vigimage
- cd vigimage
- ./vigimage.sh

### Windows or Linux headless installation

- Download the image https://www.vigibot.com/vigimage/vigimage.zip
- Unzip vigimage.zip
- Flash vigimage.img on your micro SD card. On Windows, you can use "HDD Raw Copy Tool" https://hddguru.com/software/HDD-Raw-Copy-Tool
- Inside the boot partition
  - Inside "wpa_supplicant.conf" change the "Demo" SSID and the "Default" password to match your own Wi-Fi network
  - Inside "robot.json" change the "Demo" login and the "Default" password to match your own robot account
- Power up your Raspberry PI
- Take a look at the default server https://www.vigibot.com
- Due to compilation process, the first boot take a minimum of ten minutes before robot to appear on the website: do not power off the Raspberry PI during this time
- SSH is enabled inside this image, please remember to change the default "raspberry" password of the "pi" account
