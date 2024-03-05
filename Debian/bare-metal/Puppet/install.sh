pfile="puppet8-release-bookworm" && \
sudo useradd puppet && \
wget https://apt.puppet.com/$pfile.deb && \
sudo dpkg -i $pfile.deb && \
sudo apt-get update && \
sudo apt-get install -y puppetserver
