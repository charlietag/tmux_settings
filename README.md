# tmux_settings

## SSH Client

This is fully tested on

* Chrome Secure Shell (MacOS / Windows)
  * https://chrome.google.com/webstore/detail/secure-shell/iodihamcpbpeioajjeobimgagajmlibd
* Putty (Windows)
* Terminal (Ubuntu)
* Royal TSX (MacOS) & iTerm2 (MacOS)
  * Useful settings for RoyalTSX-iTerm2
    * Default connection window size
      ![tsx_01_ssh_window_mode.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_01_ssh_window_mode.png)
    * SSH session keep-alive
      ![tsx_02_ssh_session_keepalive.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_02_ssh_session_keepalive.png)
    * Make vim work normally
      ![tsx_03_ssh_input_setting.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_03_ssh_input_setting.png)
    * Key mapping for tmux swap-window to left/right (alt-option + z / alt-option + x)
      ![tsx_04_ssh_key_mapping.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_04_ssh_key_mapping.png)
      ![tsx_04_ssh_key_mapping_alt_x.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_04_ssh_key_mapping_alt_x.png)
      ![tsx_04_ssh_key_mapping_alt_z.png](https://raw.githubusercontent.com/charlietag/github_share_folder/master/doc_images/tmux_settings/iTerm2/tsx_04_ssh_key_mapping_alt_z.png)

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

