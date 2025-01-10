### Kickstart file for FreeIPA Client ###

# Network configuration
network --bootproto=dhcp

# System bootloader configuration
bootloader --timeout=5 --append="rhgb quiet"

keyboard us
lang en_US.UTF-8
skipx

# Partitioning configuration
clearpart --all --initlabel
autopart --type=plain --nohome

# Firewall and SELinux configuration
firewall --enabled --service=ssh
selinux --enforcing

# Root password
rootpw --iscrypted $y$j9T$wjMmz7tW/jEhnbiqTMxij0$BWgGPF/SvyyVl80Nn8fKkT383ZuBVj6UAJgfNdqF1vD
# Timezone
timezone America/New_York --utc

# Install OS packages
%packages
@^server-product-environment
@core
qemu-guest-agent
%end

reboot
