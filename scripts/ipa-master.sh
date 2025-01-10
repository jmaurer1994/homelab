# Enable Chrony
systemctl enable chronyd

# FreeIPA setup
ipa-server-install \
    --domain=home.stuffserver.net \
    --realm=HOME.STUFFSERVER.NET \
    --ds-password=initial1 \
    --admin-password=initial1 \
    --hostname=dc-01.home.stuffserver.net \
    --ip-address=10.73.200.11 \
    --setup-dns \
    --auto-reverse \
    --no-ntp \
    --forwarder=10.73.200.8 \
    --forwarder=10.73.200.9 \
    --netbios-name=HOME 
