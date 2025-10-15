# Installation on WSL2 (Ubuntu24.04 LTS)
'''
sudo apt update
sudo apt install -y zsh tmux cmake make gcc g++ python3-pip pass unzip lua5.4 liblua5.4-dev ripgrep feh mpv
chsh mspahn
'''

'''
curl -fsSL https://pyenv.run | bash
sudo apt update; sudo apt install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
'''

'''
openssl verify -CAfile /etc/ssl/certs/ca-certificates.crt your-cert.crt
sudo cp cert-file.crt /usr/local/share/ca-certificates/cert-file.crt
sudo update-ca-certificates
'''


'''
curl -LsSf https://astral.sh/uv/install.sh | sh
'''

'''
curl -sS https://starship.rs/install.sh | sh
'''

'''
curl -sfL https://direnv.net/install.sh | bash
'''

'''
mkdir -p "${HOME}/.config/systemd/user"
cat <<"EOF" > "${HOME}/.config/systemd/user/wsl-wayland-symlink.service"
[Unit]
Description=Create Wayland symlinks for WSL
After=default.target

[Service]
Type=oneshot
ExecStart=/bin/sh -c 'USER_ID=$(id -u); find /mnt/wslg/runtime-dir -name "wayland-*" -type s -exec ln -sf {} /run/user/$USER_ID/ \;'

[Install]
WantedBy=default.target
EOF
systemctl --user daemon-reload
systemctl --user enable wsl-wayland-symlink.service
systemctl --user start wsl-wayland-symlink.service
'''

'''
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
'''

'''
gpg --export -a <key-ID> > mypublickey.gpg
gpg --import mypublickey.gpg
gpg --export-secret-keys -a <key-ID> > myprivatekey.gpg
gpg --import myprivatekey.gpg
'''

'''
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
'''

'''
pipx install litecli
'''


Go to https://nodejs.org/en/download
