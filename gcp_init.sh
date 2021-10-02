sudo adduser moon
sudo usermod -a -G root moon
sudo vim /etc/ssh/sshd_config

# https://github.com/sivel/speedtest-cli
# https://support.strongvpn.com/hc/en-us/articles/360038982774-How-to-Change-DNS-in-Linux
sudo nano /etc/resolv.conf
nameserver 198.18.0.1
