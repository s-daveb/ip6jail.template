# bastille-templates

Much like Docker, FreeBSD's Bastille uses template directories with `Bastillefile`s to allow users to deploy applications in a reproducible, automated way.

This template is meant for a VNET host on a VPS that assigns a block of IPV6 addresses and has rtadv and rtosld support.  It's designed to work with Vultr's IPV6-only hosts, and unassigns whatever IPv4 address Bastille gave your machine when you created it with VNET.

Defaults to using DNS64 resolution of ipv4-only hostnames using [August Internet](https://august.tw)'s [NAT64](https://en.wikipedia.org/wiki/NAT64) servers.
