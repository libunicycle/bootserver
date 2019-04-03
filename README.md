# Unicycle applications bootserver

Bootserver is a host application that serves binaries for over-the-network Unicycle [bootloader](https://github.com/libunicycle/bootloader).

Under the hood it is a simple TFTP server that listens for specific requests from unicycle bootloader. The implementation is based on Zircon's bootserver project.


## Build instructions
To build the binary simply run `make` and you'll get `bootserver` binary.

## Run the server
To run server one needs to specify what application it needs to serve. You can either specify the file directly: `bootserver $PROJECT_DIR/out/app.elf`

or run the binary inside the project directory `cd $PROJECT_DIR; bootserver` and bootserver will figure out the binary file automatically.

If you want the bootserve to handle requests only from specific nodes then please specify the device's nodename in the [bootloader configuration file](https://github.com/libunicycle/bootloader/blob/master/bootloader.cfg) and then set this name via `UNICYCLE_NODENAME` envvar:

`UNICYCLE_NODENAME=mydevice bootserver`
