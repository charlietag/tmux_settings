# tmux_settings

```bash
cd .tmux/plugins
cat installed_plugins | xargs -n 1 -P 10 -i bash -c "echo ----- Downloading Tmux Plugin : {} -----; git clone https://github.com/{}.git; echo "
```
