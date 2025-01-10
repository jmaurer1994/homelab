### Kickstart file for FreeIPA Replica Server ###

# Network configuration
network --bootproto=static --ip=10.73.200.12 --netmask=255.255.252.0 --gateway=10.73.200.1 --nameserver=10.73.200.8 --nameserver=10.73.200.9 --hostname=dc-02.home.stuffserver.net

# System bootloader configuration
bootloader --timeout=5 --append="rhgb quiet"

keyboard us
lang en_US.UTF-8
skipx

# Partitioning configuration
clearpart --all --initlabel
autopart --type=plain --nohome

# Firewall and SELinux configuration
firewall --enabled --service=ssh --service=freeipa-ldap --service=freeipa-ldaps
selinux --enforcing

# Root password
rootpw --iscrypted $y$j9T$wjMmz7tW/jEhnbiqTMxij0$BWgGPF/SvyyVl80Nn8fKkT383ZuBVj6UAJgfNdqF1vD
# Timezone
timezone America/New_York --utc

# Install OS packages
%packages
@^server-product-environment
@core
chrony
ipa-server-dns
qemu-guest-agent
%end

reboot
