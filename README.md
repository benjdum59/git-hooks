# git-hooks

The aim of this repository is to store common git hooks. In addition, this repository offer a way to install them locally using only an url.

# Simple installation
At the root of your local git repository, run the following command:
```bash
wget -O install-git-hooks.sh  https://raw.github.com/benjdum59/git-hooks/master/install.sh ; bash install-git-hooks.sh
```

# Manual installation
Clone/Download the repository and put all the hooks you need in your .git/hooks folder inside your local repository.
Copy the conf folder (if exists) and the message folder in your .git/hooks folder inside your local repository.

# Advanced use
By default, all hooks will be installed using the simple installation. You can filter them by adding the hook(s) you need as argument.
e.g.

```bash
wget -O install-git-hooks.sh  https://raw.github.com/benjdum59/git-hooks/master/install.sh ; bash install-git-hooks.sh commit-msg
```

# Hooks description
## commit-msg
Force a pattern to apply for commit messages. The pattern used is described in the [message/commit-message-format file](https://github.com/benjdum59/git-hooks/blob/master/message/commit-message-format)

## prepare-commit-msg
Auto feed the commit message based on the branch name. Branch must be named like &lt;branch type&gt;/&lt;Issue ID&gt; with:
- branch type: feat | feature | fix | refactor | refacto (Issue ID is mandatory)
- branch type: chore | docs | doc | style | perf | test | build (Issue ID is optional)
- issue ID: must start with a letter and end with a digit

## pre-push
Prevent pushing from develop or master (this should be done in a pull request)

# Hooks workflow
![Hooks workflow](hooks-workflow.png)

