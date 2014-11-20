pkg_prereqs=('apt-get cmake curl')
pkg_extract_path=~/
pkg_description='node.js — server-side JS platform'

function install_package() {
  # https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
  curl -sL https://deb.nodesource.com/setup | bash -
  apt-get install -y nodejs
  apt-get install -y build-essential
  sudo npm install -g n
  sudo n 0.10.33

    if b.ui.ask_yes_or_not ">>> Would you like to install localtunnel tool? (https://localtunnel.me)"; then
      sudo npm install -g localtunnel
    fi
}
