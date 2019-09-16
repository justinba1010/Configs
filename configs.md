# Raspberry Pi

## Window Manager Raspberry Pi
/etc/lightdm/lightdm.conf


# Ocaml

## Uninstall all opam
### This took me a while to figure out was an issue, but it may come handy sometimes, uninstalling opam doesn't cover this.
`opam list | sed 1,2d | awk -F ' ' '{print $1}' | xargs opam uninstall`
