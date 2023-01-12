#!/bin/bash

# ---------------------------------------------
# Define var
# ---------------------------------------------
TMUX_CONF="$HOME/.tmux.conf"
TMUX_FOLDER="$HOME/.tmux"

TAG_TMUX_CONF="${TMUX_FOLDER}/tmux_settings/tmux.conf"

# ---------------------------------------------
# Delete current TMUX setting
# ---------------------------------------------
rm -f ${TMUX_CONF}
rm -fr ${TMUX_FOLDER}

# ---------------------------------------------
# Start to install tmux settings and plugin
# ---------------------------------------------
GIT_CMD="$(command -v git)"

if [[ -n "${GIT_CMD}" ]]; then
  mkdir -p ${TMUX_FOLDER}
  #git -C ${TMUX_FOLDER} clone https://github.com/charlietag/tmux_settings.git
  cd ${TMUX_FOLDER} && git clone https://github.com/charlietag/tmux_settings.git
else
  echo "Sorry, Git is not installed yet!"
  exit
fi

if [[ -f "${TAG_TMUX_CONF}" ]]; then
  ln -s ${TAG_TMUX_CONF} ${TMUX_CONF}
fi

if [[ -f "${TMUX_CONF}" ]]; then
  #-----------------------------------------------------------------------------------------
  #Setup Tmux Plugin
  #-----------------------------------------------------------------------------------------
  mkdir -p $HOME/.tmux/plugins

  cd $HOME/.tmux/plugins

  # ---- Start Fetching tmux plugins from github ----
  GIT_FETCH_CONCURRENCY=10
  cat ${TMUX_CONF} |grep '@plugin' |grep -Ev "^#" | awk -F"'" '{print $2}' | \
    xargs -n 1 -P ${GIT_FETCH_CONCURRENCY} -I bash -c \
    "echo ----- Downloading Tmux Plugin : {} -----; git clone https://github.com/{}.git; echo "
  # ---- Start Fetching tmux plugins from github END----
  echo ""
  echo "---------- Tmux settings finished ----------"

else
  echo "${TMUX_CONF} not found !!!"
fi
