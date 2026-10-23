set -e 
# Exits if fail

echo "Updating package lists"
sudo apt-get update
echo "Installing apt-get packages"
xargs -a "apt-packages.txt" sudo apt-get install -y
sudo apt-get install -y python3-pip
pip3 install -r requirements.txt
