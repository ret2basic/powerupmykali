# CTF Pwnbox Setup Script
This Bash script automatically installs essential tools for CTF. Tested on Ubuntu 20.04 (64-bit).

## Usage

```shell
$ wget https://raw.githubusercontent.com/ret2basic/CTF-Pwnbox-Setup-Script/main/pwnbox_setup.sh
$ chmod +x pwnbox_setup.sh
$ ./pwnbox_setup.sh
```

Then install Oh My Zsh manually:

```shell
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Edit `~/.zshrc`:

```plaintext
ZSH_THEME="agnoster"
```

Source it:

```shell
$ source ~/.zshrc
```

Log out and log back in for the `docker` group membership to evaluate.

Done! Take a snapshot!
