# enabling puppet platform
pfile="puppet8-release-bookworm" && \
wget https://apt.puppet.com/$pfile.deb && \
sudo dpkg -i $pfile.deb && \
sudo apt-get update && \
sudo apt-get install -y puppetserver
