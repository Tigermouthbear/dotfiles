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

## Themes + Screenshots
theme set in dwm/scripts/run.sh or toggled with ALT+R
<details>
  <summary>berserk</summary>
  <img src="https://i.tigr.dev/lelkaeni.png">
  <img src="https://i.tigr.dev/lelkaauq.png">
</details>
<details>
  <summary>cyborg</summary>
  <img src="https://i.tigr.dev/lekw3iuk.png">
  <img src="https://i.tigr.dev/lekw3b0y.png">
</details>
<details>
  <summary>edgerunners</summary>
  <img src="https://i.tigr.dev/leknbszq.png">
  <img src="https://i.tigr.dev/leknb497.png">
</details>
<details>
  <summary>evangelion</summary>
  <img src="https://i.tigr.dev/lekn4vye.png">
  <img src="https://i.tigr.dev/lekn6cv2.png">
</details>
<details>
  <summary>ouro-kronii-cyberpunk</summary>
  <img src="https://i.tigr.dev/leknelyg.png">
  <img src="https://i.tigr.dev/leknfeqd.png">
</details>
<details>
  <summary>windowsjp</summary>
  <img src="https://i.tigr.dev/lelkb0r7.png">
  <img src="https://i.tigr.dev/lelkbu8s.png">
</details>


## Vague Install Guide
- install picom, feh, nvim (and xsel for clipboard support), pulseaudio or pipewire(w/ pulseaudio support), and ly
- clone this repo into the .config folder and cd into it
- rm -rf nvim/lua/custom && ln -s ../../nvcustom nvim/lua/custom
- ln -s dotfiles/nvim ~/.config/nvim
- replace NotoColorEmoji:pixelsize=10 with DejaVuSansM Nerd Font:pixelsize=12 in st/config.h
- change status and theme script path in dwm-flexipatch/config.h in the commands section
- make install st and dwm-flexipatch from this repo
- patch and install dmenu and slock using the patches and configs under patches/ and *.config.h 
- modify dwm.desktop to have correct run.sh path and copy to /usr/share/xsessions/
- enable lock on suspend by moving slock@.service to /etc/systemd/system/ and enabling the systemd service
- block VT switching and prevent killing X
