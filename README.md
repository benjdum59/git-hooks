# git-hooks

The aim of this repository is to store common git hooks. In addition, this repository offer a way to install them locally using only an url.

# Simple installation
At the root of your local git repository, run the following command:
```bash
wget -O install-git-hooks.sh  https://raw.github.com/benjdum59/git-hooks/master/install.sh ; bash install-git-hooks.sh
```

# Manual installation
Clone the repository and put all the hooks you need in your .git/hooks folder inside your local repository.

# Advanced use
By default, all hooks will be installed using the simple installation. You can filter them by adding the hook(s) you need as argument.
e.g.

```bash
wget -O install-git-hooks.sh  https://raw.github.com/benjdum59/git-hooks/master/install.sh ; bash install-git-hooks.sh commit-msg
```
