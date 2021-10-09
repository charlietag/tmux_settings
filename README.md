# tmux_settings

## Description

Deploy my TMUX setting and TMUX plugins using [``Tmux Plugin Manager``](https://github.com/tmux-plugins/tpm) on **CentOS 8**

* Be sure to **backup your config**
  * `$HOME/.tmux.conf`
  * `$HOME/.tmux/`

## Installed Plugins

* tmux-plugins/tpm
* tmux-plugins/tmux-sensible
* charlietag/tmux-themes
* tmux-plugins/tmux-copycat
* tmux-plugins/tmux-resurrect
* tmux-plugins/tmux-continuum
* charlietag/tmux-cpu-model
* charlietag/tmux-split-statusbar

## Automatic Installation (Recommend)

```bash
$ bash <(curl -LSs https://raw.githubusercontent.com/charlietag/tmux_settings/master/utils/install.sh)
```

## Manual Installation

* Remove current config
  * `rm -f $HOME/.tmux.conf`
  * `rm -fr $HOME/.tmux`

* Clone my config
  * `mkdir -p $HOME/.tmux`
  * `cd $HOME/.tmux && git clone https://github.com/charlietag/tmux_settings.git`
  * `ln -s $HOME/.tmux/tmux_settings/tmux.conf $HOME/.tmux.conf`

* Install TMUX plugins
  * `mkdir -p $HOME/.tmux/plugins`
  * `cd $HOME/.tmux/plugins`
  * Download tmux plugins

    ```bash
    cat $HOME/.tmux.conf |grep '@plugin' |grep -Ev "^#" | awk -F"'" '{print $2}' | \
      xargs -n 1 -P 10 -i bash -c \
      "echo ----- Downloading Tmux Plugin : {} -----; git clone https://github.com/{}.git; echo "
    ```

* Done

## Note

* Change layout, ex: vertical to horizantal
  * `Ctrl`+`a`+`space`
* Equal size for all panes
  * `Ctrl`+`a`+`E`
* Text copied in tmux (COPY c+a+[+V+enter) PASTE (c+a+]) - (it's actually save into tmux buffer)
  * List all buffers
    * `Ctrl`+`a`+`=`
  * Delete buffers (Just delete one by one, without knowing how many are deleted...)
    * `Ctrl`+`a`+`-`

## SSH Client

This is fully tested on

* iTerm2 (MacOS) - `Most Recommended`
  * **Useful settings (personal setting)**
    * My iTerm2 colorscheme
      ![iTerm2_01_terminal_color_scheme.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iTerm2_01_terminal_color_scheme.png)

    * Disable all bell alerts
      ![iTerm2_disable_bell_alert.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iTerm2_disable_bell_alert.png)

    * SSH session keep-alive

      `ssh -o ServerAliveInterval=30 charlietag@github.com -p 22`

    * Make vim work normally - disable mouse reporting
      ![iTerm2_02_disable_mouse_reporting.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iTerm2_02_disable_mouse_reporting.png)
    * Key mapping for tmux swap-window to left/right (alt-option + z / alt-option + x)
      * https://github.com/c-bata/go-prompt/blob/master/input.go

      ![iterm2_03_key_mappings.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iterm2_03_key_mappings.png)
      ![iterm2_03_key_mappings_alt_x.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iterm2_03_key_mappings_alt_z.png)
      ![iterm2_03_key_mappings_alt_x.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iterm2_03_key_mappings_alt_x.png)

    * Key mapping for tmux move-pane to up/down/left/right (⌘ + up/down/left/right)
      ![iTerm2_command_arrow.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iTerm2_command_arrow.png)

    * Key mapping for ignoring ⌘ + t
      ![iTerm2_ignore_command_t.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/iTerm2_ignore_command_t.png)


* Chrome Secure Shell (MacOS / Windows)
  * https://chrome.google.com/webstore/detail/secure-shell/iodihamcpbpeioajjeobimgagajmlibd

* Royal TSX (MacOS)
  * Useful but screen response is kind of delay
  * Useful settings for RoyalTSX-iTerm2
    * Default connection window size
      ![tsx_01_ssh_window_mode.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_01_ssh_window_mode.png)
    * SSH session keep-alive
      ![tsx_02_ssh_session_keepalive.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_02_ssh_session_keepalive.png)
    * Make vim work normally - disable mouse reporting
      ![tsx_03_ssh_input_setting.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_03_ssh_input_setting.png)
    * Key mapping for tmux swap-window to left/right (alt-option + z / alt-option + x)
      ![tsx_04_ssh_key_mapping.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_04_ssh_key_mapping.png)
      ![tsx_04_ssh_key_mapping_alt_z.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_04_ssh_key_mapping_alt_z.png)
      ![tsx_04_ssh_key_mapping_alt_x.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_04_ssh_key_mapping_alt_x.png)

* Terminal (Ubuntu)
  * To use F10 in vim
    ![use_f10.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/ubuntu/use_f10.png)

* Putty (Windows)

