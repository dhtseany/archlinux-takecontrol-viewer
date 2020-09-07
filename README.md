This is a work-in-progress repo for eventual submission to the AUR. 

For now you must follow these manaul install instructions until I can find a way to source the included .deb file directly from SW, then is code will be merged into the AUR.

0. This whole thing assumes you've already got a working copy of Wine installed with Gecko and Mono included. If not, get all that done first.

1. Obtain RemoteBackgroundViewerInstall_Linux.tar.gz, usually by attempting to start a Take Control session from a Linux system.

2. Extract RemoteBackgroundViewerInstall_Linux.tar.gz and fetch the installer .deb file.

3. Extract takecontrolviewer_6.80.20.51_i386.deb then from within RemoteBackgroundViewerInstall_Linux.tar.gz then extract data.tar.gz. 

4. Fetch the TakeControl Windows installer from $(srcdir)/tmp/takecontrol/TakeControlViewerInstall-6.80.20-BUILD-20171117.exe

5. Install the .exe using Wine

6. Copy the files into place (aka install them):
    a. $ sudo mkdir -p /usr/bin/takecontrol
    b. $ sudo cp ./setup_protocol_hander /usr/bin/takecontrol
    c. $ sudo cp ./start_viewer.sh /usr/bin/takecontrol

7. Once the install is complete the last step is to install the xdg-open as the local user (aka not root):
    a. $ /usr/bin/takecontrol/setup_protocol_handler