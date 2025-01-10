# Enable Chrony
systemctl enable chronyd

# FreeIPA replica setup
ipa-replica-install \
    --principal=admin \
    --setup-dns \
    --ip-address=10.73.200.12 \
    --forwarder=10.73.200.8\
    --forwarder=10.73.200.9\
    --no-ntp 
