# Healthcheck Pinger app

Creating this for my home's internal hosting structure to create "Heartbeats" for some servers.

## Usage on Debian 11 Linux Containers

1. Put the contents of `hc-ping.sh` into `/etc/init.d`.
1. Change the "fixme" to match the correct hash from a valid healthcheck endpoint from https://healthchecks.io/.
1. Run `chmod +x /etc/init.d/hc-ping.sh` to make this executable.
1. If necessary, create `/etc/rc.local` and chmod 755.
1. Follow this [StackExchange answer](https://unix.stackexchange.com/a/474155) for contents of `/etc/rc.local`.
1. Execute the script directly and/or reboot the container.  

If the entries in both scripts are correct, the healthcheck update should occur.

## Usage on Centos 7 Hosts

1. Create a new service: `/etc/systemd/system/healthcheck.service`. Use the provided `healthcheck.service` file in the `centos-7/` folder to create this file.
1. Add the provided `hc-ping.sh` file in the `centos-7/` folder to `/root/scripts/`.
1. Run `systemctl enable healthcheck.service` to enable.
1. Reboot or run `systemctl start healthcheck.service` to start.


## References

- [Healthchecks.io docs](https://healthchecks.io/docs/bash/)
- [This StackOverflow answer](https://stackoverflow.com/a/12973826)
- [This StackExchange answer](https://unix.stackexchange.com/a/474155)
- [Create new service units in systemd](https://www.tecmint.com/create-new-service-units-in-systemd/)