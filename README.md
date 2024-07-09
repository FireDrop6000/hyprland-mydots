<div align="center">

![top_banner](https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/banner.png)

<br><div align="center"><img width="65%" src="https://raw.githubusercontent.com/FireDrop6000/hyprland-mydots/master/.config/assets/made-with-arch-text.png"/><br></div>

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
cp . ~/.config
```

### Updating

To update the dotfiles, you will need to pull the latest changes from GitHub and restore the configs by running the following commands:

```shell
cd ~/mydots
git pull
cp . ~/.config
```

<!--README Under Construction-->

## Styles

<div align="center">
        <table>
            <tr><a href="https://github.com/hyprwm/hyprlock">Hyprlock</a></tr>
            <tr><td><img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_1.png"/></td>
                <td><img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/theme_select_2.png"/></td></tr>
        </table>
    </div>

<div align="center"><table><tr><td>Wallpaper Select</td><td>Launcher Select</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/walls_select.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_sel.png"/></td></tr>
<tr><td>Wallbash Modes</td><td>Notification Action</td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wb_mode_sel.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/notif_action_sel.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Rofi Launcher</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_3.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_5.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_6.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_7.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_8.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_9.png"/></td></tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_10.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_11.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/rofi_style_12.png"/></td></tr>
</table></div>

<div align="center"><table><tr>Wlogout Menu</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/wlog_style_2.png"/></td></tr></table></div>

<div align="center"><table><tr>Game Launcher</tr><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_1.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_2.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_3.png"/></td></tr></table></div>
<div align="center"><table><tr><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_4.png"/></td><td>
<img src="https://raw.githubusercontent.com/prasanthrangan/hyprdots/main/Source/assets/game_launch_5.png"/></td></tr></table></div>

<div align="right">
  <br>
  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>
</div>

<!--## Keybindings-->
<!---->
<!--<div align="center">-->
<!---->
<!--| Keys | Action |-->
<!--| :--- | :--- |-->
<!--| <kbd>Super</kbd> + <kbd>Q</kbd><br><kbd>Alt</kbd> + <kbd>F4</kbd> | Close focused window|-->
<!--| <kbd>Super</kbd> + <kbd>Del</kbd> | Kill Hyprland session |-->
<!--| <kbd>Super</kbd> + <kbd>W</kbd> | Toggle the window between focus and float |-->
<!--| <kbd>Super</kbd> + <kbd>G</kbd> | Toggle the window between focus and group |-->
<!--| <kbd>Alt</kbd> + <kbd>Enter</kbd> | Toggle the window between focus and fullscreen |-->
<!--| <kbd>Super</kbd> + <kbd>L</kbd> | Launch lock screen |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>F</kbd> | Toggle pin on focused window |-->
<!--| <kbd>Super</kbd> + <kbd>Backspace</kbd> | Launch logout menu |-->
<!--| <kbd>Ctrl</kbd> + <kbd>Esc</kbd> | Toggle waybar |-->
<!--| <kbd>Super</kbd> + <kbd>T</kbd> | Launch terminal emulator (kitty) |-->
<!--| <kbd>Super</kbd> + <kbd>E</kbd> | Launch file manager (dolphin) |-->
<!--| <kbd>Super</kbd> + <kbd>C</kbd> | Launch text editor (vscode) |-->
<!--| <kbd>Super</kbd> + <kbd>F</kbd> | Launch web browser (firefox) |-->
<!--| <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>Esc</kbd> | Launch system monitor (htop/btop or fallback to top) |-->
<!--| <kbd>Super</kbd> + <kbd>A</kbd> | Launch application launcher (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>Tab</kbd> | Launch window switcher (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>E</kbd> | Launch file explorer (rofi) |-->
<!--| <kbd>F10</kbd> | Toggle audio mute |-->
<!--| <kbd>F11</kbd> | Decrease volume |-->
<!--| <kbd>F12</kbd> | Increase volume |-->
<!--| <kbd>Super</kbd> + <kbd>P</kbd> | Partial screenshot capture |-->
<!--| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>P</kbd> | Partial screenshot capture (frozen screen) |-->
<!--| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>P</kbd> | Monitor screenshot capture |-->
<!--| <kbd>PrtScn</kbd> | All monitors screenshot capture |-->
<!--| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>G</kbd> | Disable hypr effects for gamemode |-->
<!--| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>→</kbd><kbd>←</kbd> | Cycle wallpaper |-->
<!--| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>↑</kbd><kbd>↓</kbd> | Cycle waybar mode |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd> | Launch wallbash mode select menu (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>T</kbd> | Launch theme select menu (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>A</kbd> | Launch style select menu (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>W</kbd> | Launch wallpaper select menu (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>V</kbd> | Launch clipboard (rofi) |-->
<!--| <kbd>Super</kbd> + <kbd>K</kbd> | Switch keyboard layout |-->
<!--| <kbd>Super</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Move window focus |-->
<!--| <kbd>Alt</kbd> + <kbd>Tab</kbd> | Change window focus |-->
<!--| <kbd>Super</kbd> + <kbd>[0-9]</kbd> | Switch workspaces |-->
<!--| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>←</kbd><kbd>→</kbd> | Switch workspaces to a relative workspace |-->
<!--| <kbd>Super</kbd> + <kbd>Ctrl</kbd> + <kbd>↓</kbd> | Move to the first empty workspace |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Resize windows |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>[0-9]</kbd> | Move focused window to a relative workspace |-->
<!--| <kbd>Super</kbd> + <kbd>Shift</kbd> + <kbd>Ctrl</kbd> + <kbd>←</kbd><kbd>→</kbd><kbd>↑</kbd><kbd>↓</kbd> | Move focused window around the current workspace |-->
<!--| <kbd>Super</kbd> + <kbd>MouseScroll</kbd> | Scroll through existing workspaces |-->
<!--| <kbd>Super</kbd> + <kbd>LeftClick</kbd><br><kbd>Super</kbd> + <kbd>Z</kbd> | Move focused window |-->
<!--| <kbd>Super</kbd> + <kbd>RightClick</kbd><br><kbd>Super</kbd> + <kbd>X</kbd> | Resize focused window |-->
<!--| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>S</kbd> | Move/Switch to special workspace (scratchpad) |-->
<!--| <kbd>Super</kbd> + <kbd>S</kbd> | Toggle to special workspace |-->
<!--| <kbd>Super</kbd> + <kbd>J</kbd> | Toggle focused window split |-->
<!--| <kbd>Super</kbd> + <kbd>Alt</kbd> + <kbd>[0-9]</kbd> | Move focused window to a workspace silently |-->
<!---->
<!--</div>-->
<!---->
<!--<div align="right">-->
<!--  <br>-->
<!--  <a href="#-design-by-t2"><kbd> <br> 🡅 <br> </kbd></a>-->
<!--</div>-->
<!---->
<!---->
