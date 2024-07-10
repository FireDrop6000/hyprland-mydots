<div align="left">

![top_banner](https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/banner.png)

<br><div align="center"><img width="65%" src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/made-with-arch-text.png"/><br></div>

## Overview
<div align="center"><iframe width="720" height="450" src="https://www.youtube.com/embed/lp5mevHqZsk?si=sMNRFEo4CawMOjpx" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></div>

## Installation

No specific installation script is available. You should be okay with a minimal [Arch Linux](https://wiki.archlinux.org/title/Arch_Linux) install, or **maybe** on some [Arch-based distros](https://wiki.archlinux.org/title/Arch-based_distributions). My Dotfiles are specifically designed to work on [Hyprland](https://wiki.hyprland.org) and you should use it for the full experience. Individual dotfiles, however, which do not have any relation with the [WM](https://wiki.archlinux.org/title/window_manager) or the [DM](https://wiki.archlinux.org/title/display_manager), can be individually applied for the corresponding packages.

> [!IMPORTANT]
> This will overrride your previous configurations.
> Make sure to create backups for whatever configurations you want to use of.

To install, execute the following commands:

```shell
pacman -Sy git
git clone https://github.com/FireDrop6000/hyprland-mydots.git ~/mydots
cd ~/mydots
cp . ~
```

### Updating

To update the dotfiles, you will need to pull the latest changes from GitHub and restore the configs by running the following commands:

```shell
cd ~/mydots
git pull
cp . ~
```
## Packages

<div align="center"><table><tr><a href="https://github.com/hyprwm/hyprlock">Hyprlock</a></tr>
<tr><td><img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/hyprlock-1.png"/></td>
<td><img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/hyprlock-2.png"/></td></tr>
</table></div>

<div align="center"><table><tr><td><a href="https://wiki.hyprland.org">Hyprland</a></td><td><a href="https://sw.kovidgoyal.net/kitty">Kitty</a></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/hyprland.png"/></td><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/kitty.png"/></td></tr>
<tr><td><a href="https://rybczak.net/ncmpcpp">NCMPCPP</a></td><td><a href="https://github.com/dylanaraps/neofetch">Neofetch</a></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/ncmpcpp.png"/></td><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/neofetch.png"/></td></tr>
</table></div>

<div align="center"><table><tr><a href="https://github.com/lbonn/rofi">Rofi Launcher</a></tr><tr><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/rofi-1.png"/></td><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/rofi-2.png"/></td><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/rofi-3.png"/></td></tr>
</table></div>

<div align="center"><table><tr><td><a href="https://nvchad.com/docs/quickstart/install">NvChad</a></td><td><a href="https://github.com/spicetify/spicetify-themes/blob/master/THEMES.md#lunar">Spicetify Lunar</a></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/neovim.png"/></td><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/spotify.png"/></td></tr>
</table></div>

<div align="center"><table><tr><td><a href="https://github.com/Alexays/Waybar">Waybar</a></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/waybar.png"/></td></tr>
</table></div>

#### Further

<div><ul> 
<li><a href="https://github.com/dunst-project/dunst">Dunst</a></li>
<li><a href="https://github.com/MusicPlayerDaemon/MPD">MPD</a></li>
<li><a href="https://github.com/natsukagami/mpd-mpris">Mpd-Mpris</a></li>
<li><a href="https://github.com/altdesktop/playerctl">Playerctl</a></li>
<li><a href="https://github.com/ammen99/wf-recorder">Wf-Recorder</a></li>
<li><a href="https://github.com/emersion/grim">Grim</a></li>
<li><a href="https://wiki.hyprland.org/Hypr-Ecosystem/hyprpaper">Hyprpaper</a></li>
<li><a href="https://github.com/karlstav/cava">Cava</a></li>
<li><a href="https://github.com/abba23/spotify-adblock">Spotify Adblock</a></li>
<li><a href="https://th-ch.github.io/youtube-music">Youtube Music</a></li>
<li><a href="https://starship.rs">Starship</a></li>
<li>Additional user-specific applications like File Manager and Chat App</li>
</ul></div>

#### Firefox

My Firefox rice is [here](https://github.com/FireDrop6000/my-firefox-css) if anyone wants to check out. However, I later added [Betterfox](https://github.com/yokoffing/Betterfox) JS to it.

## Keybindings

<div align="center">

| Keys | Action |
| :--- | :--- |
| <kbd>Super</kbd> + <kbd>T</kbd> | Open Terminal |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd> | Open Floating Terminal |
| <kbd>Super</kbd> + <kbd>A</kbd> | Close Process |
| <kbd>Super</kbd> + <kbd>L</kbd> | Lock PC |
| <kbd>Super</kbd> + <kbd>Q</kbd> | Open Power Menu |
| <kbd>Super</kbd> + <kbd>X</kbd> | Kill Process |
| <kbd>Super</kbd> + <kbd>E</kbd> | Open File Manager |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd> | Open Floating File Manager |
| <kbd>Super</kbd> + <kbd>V</kbd> | Toggle Floating Mode for Windows |
| <kbd>Super</kbd> + <kbd>Space</kbd> | Open App Menu |
| <kbd>Super</kbd> + <kbd>P</kbd> | Toggle Pseudo Mode for Windows |
| <kbd>Super</kbd> + <kbd>J</kbd> | Toggle window splits |
| <kbd>Super</kbd> + <kbd>S</kbd> | Open Screenshot Menu |
| <kbd>Alt</kbd> + <kbd>V</kbd> | Open Clipboard |
| <kbd>Super</kbd> + <kbd>W</kbd> | Update Wallpaper |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd> | Update Waybar |
| <kbd>Super</kbd> + <kbd>F</kbd> | Toggle Fullscreen Mode for Windows |
| <kbd>Super</kbd> + <kbd>B</kbd> | Open Browser |
| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>T</kbd> | Open Secondary Browser |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>X</kbd> | Kill Hyprland |
| <kbd>Super</kbd> + <kbd>C</kbd> | Open Secondary Code Editor |
| <kbd>Super</kbd> + <kbd>M</kbd> | Open Music Menu |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd> | Change Display |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>G</kbd> | Open ChatGPT |
| <kbd>Alt</kbd> + <kbd>W</kbd> | Open Wifi Menu |
| <kbd>Super</kbd> + <kbd>R</kbd> | Toggle Screen Recorder |
| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>C</kbd> | Open Calculator |
| <kbd>Alt</kbd> + <kbd>B</kbd> | Open Bluetooth Menu |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>C</kbd> | Open Chat App |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd> | Toggle DND Mode |
| <kbd>Super</kbd> + <kbd>.</kbd> | Player Shift |
| <kbd>Super</kbd> + <kbd>,</kbd> | Player Unshift |
| <kbd>Super</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Move Window Focus |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Move Window |
| <kbd>Super</kbd> + <kbd>[0-9]</kbd> | Switch Workspaces |
| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[0-9]</kbd> | Move Focused Window to Other Workspace |

</div>

Special thanks to everyone who helped me achieve this, especially my good college friend [ArneshRC](https://github.com/ArneshRC) for helping me out troubleshooting many, many things and also develop and refurbish some of the scripts. Also the [r/unixporn](https://www.reddit.com/r/unixporn) community and some Youtube rices are huge inspirations of mine. Check out [Eric Murphy](https://www.youtube.com/@EricMurphyxyz), I learnt a lot from him. If you like the work, just star it please, thats all I would ask from you. Stay happy people!
</div>
