# Tiger's Dotfiles
not really setup for others to install very easily, but have a peek if you'd like

## What I'm Using
- Window Manager: dwm (custom status bar + various patches)
- Compositor: picom
- Screen Lock: slock (dwm logo patch)
- Terminal: st (Luke Smith's build)
- Editor: nvim (NvChad config)
- Display Manager: ly
- Font: DejaVuSansMono Nerd Font

## Changing Theme
- change THEME variable in dwm/scripts/run.sh to one from dwm/themes

## Vague Install Guide
- clone this repo into the .config folder
- install picom, nvim, and ly
- ln -s ../../../nvim.lua dotfiles/nvim/lua/custom/init.lua
- ln -s dotfiles/nvim .config/nvim
- enable alpha-nvim in nvim/lua/plugins/init.lua
- replace NotoColorEmoji:pixelsize=10 with DejaVuSansMono Nerd Font:pixelsize=12 in st/config.h
- make install st and dwm from this repo
- modify dwm.desktop to have correct run.sh path and copy to /usr/share/xsessions/
- enable lock on suspend by moving slock@.service to /etc/systemd/system/ and enabling the systemd service
- Block VT switching and prevent killing X
