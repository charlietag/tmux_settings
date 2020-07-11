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
