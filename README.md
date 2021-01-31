# CTF Pwnbox Setup Script
These two Bash scripts automatically installs essential tools for CTF. Tested on Ubuntu 20.04 (64-bit).

## Usage

There are two scripts, you need to run part 1 as root and part 2 as user:

```shell
# Part 1
$ sudo su
$ wget https://raw.githubusercontent.com/ret2basic/CTF-Pwnbox-Setup-Script/main/run_as_root.sh
$ chmod +x run_as_root.sh
$ ./run_as_root.sh

# Part 2
$ exit
$ wget https://raw.githubusercontent.com/ret2basic/CTF-Pwnbox-Setup-Script/main/run_as_user.sh
$ chmod +x run_as_user.sh
$ ./run_as_user.sh
```

**Log out and log back in for the `docker` group membership to evaluate.**

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



Done! Take a snapshot!
