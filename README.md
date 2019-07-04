# Make your own Vigibot.com raspberry PI robot

## Automatic Raspbian image customizer for Vigibot.com

### Everything is already done

- You can directly download the image https://www.vigibot.com/vigimage/vigimage.img and jump to the "Windows or Linux headless installation" part

### Prerequisites

- apt install -y git wget unzip kpartx qemu-user-static binfmt-support

### Image generation

- git clone https://github.com/vigibot/vigimage
- cd vigimage
- ./vigimage.sh

### Windows or Linux headless installation

- Flash the vigimage.img on your micro SD card
- Inside the boot partition
  - Inside "wpa_supplicant.conf" change the "Demo" SSID and the "Default" password to match your own Wi-Fi network
  - Inside "robot.json" change the "Demo" login and the "Default" password to match your own robot account
- Power up your Raspberry PI
- Take a look at the default server https://www.vigibot.com
- SSH is enabled inside this image, please remember to change the default "raspberry" password of the "pi" account
