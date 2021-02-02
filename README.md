# CTF Pwnbox Setup Script
This Bash scripts automatically installs essential tools for CTF. Tested on Kali Linux 2020.4 64-Bit.

## Usage

Log in with `kali:kali` and change password immediately:

```shell
$ passwd
```

Then set up the root account:

```shell
$ sudo passwd root
```

Log out and log in as root, and then run this script:

```shell
$ wget https://raw.githubusercontent.com/ret2basic/CTF-Pwnbox-Setup-Script/main/pwnbox_setup.sh
$ chmod +x pwnbox_setup.sh
$ ./pwnbox_setup.sh
$ rm pwnbox_setup.sh
```

Done. Take a snapshot!

## To-Do

- [ ] Ghidra
- [ ] Autopwn
- [ ] Misc tools
