# Healthcheck Pinger app

Creating this for my home's internal hosting structure to create "Heartbeats" for some servers.

## Usage on Debian 11 Linux Containers

1. Put the contents of `hc-ping.sh` into `/etc/init.d`
1. Change the "fixme" to match the correct hash from a valid healthcheck endpoint from https://healthchecks.io/
1. Run `chmod +x /etc/init.d/hc-ping.sh` to make this executable
1. If necessary, create `/etc/rc.local` and chmod 755
1. Follow this [StackExchange answer](https://unix.stackexchange.com/a/474155) for contents of `/etc/rc.local`
1. Execute the script directly and/or reboot the container.  

If the entries in both scripts are correct, the healthcheck update should occur

## References

- [Healthchecks.io docs](https://healthchecks.io/docs/bash/)
- [This StackOverflow answer](https://stackoverflow.com/a/12973826)
- [This StackExchange answer](https://unix.stackexchange.com/a/474155)