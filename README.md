# androidhost
Docker-based environment to access an android device using ADB and fastboot

## Usage

1. Build it
   ```
   docker -t androidhost .
   ```
1. Run it
   ```
   docker run -i --device=/dev/bus/usb --volume=${PWD}/files:/export -t androidhost bash
   ```
