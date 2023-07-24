# dotfiles
Miquel's .files managed with chezmoi

```
GITHUB_USERNAME=mbonastre
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
chezmoi git -- remote set-url --push origin git@github.com:$GITHUB_USERNAME/dotfiles.git
```

