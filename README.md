# androidhost
Docker-based environment to access an android device using ADB and fastboot

## Usage

1. Get it. The usual way. For instance, if you have git installed you can do
   ```
   git clone https://github.com/raubvogel/androidhost.git
   ```
   If not, go to the [homepage](https://github.com/raubvogel/androidhost) for this repo, click on the gree "Code" button, and then click on the "Download ZIP." That will, as the name implies, download the repo as a zip file which you can unzip by your means of choice.
1. Build it. For security reasons I am not providing built images; you want it, you build it.
   ```
   docker build -t androidhost .
   ```
1. If you want to donwload any files you want to upload to the phone, this is the right time. For instance, you may want to get a new OS image. Go to files and place them there.
1. Run it. Yes we are running it from a console as it should only be up while we need to talk to the device.

   1. From a Linux computer. 
      ```
      docker run -i --device=/dev/bus/usb --volume=${PWD}/files:/export -t androidhost bash
      ```
   1. From a Mac computer. *in progress*
   1. From a Windows computer. *might take a while as I currently have no access to a machine running that OS*
1. Verify you can see the device.
1. Use it. These are just examples to show you can use adb and fastboot the same way you would if you had installed them in your computer.
   1. Go to /exports as that directory will be preserved after you quit the container.
   1. Upload a file or directory
   1. Download a file or directory
   1. Reboot the device
   1. Tell device to boot to XXXX mode
