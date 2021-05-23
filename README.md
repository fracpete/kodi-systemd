# kodi-systemd
Starting/stopping kodi on Raspberry Pi via systemd.

## Installation

* copy `kodi.sh` into:

  ```commandline
  /usr/local/bin
  ```

* copy `kodi.service` into:

  ```commandline
  /etc/systemd/system
  ```

* enable service

  ```commandline
  sudo systemctl enable kodi
  ```

