Dev Git Config by Charles Reilly
================================

👋 Welcome! This repository provides a custom Git configuration setup, including helpful aliases for Git and GitHub CLI commands, all created by Charles Reilly. This setup is _for devs, by a dev_.

Repository Contents
-------------------

*   **git-aliases**: A configuration file containing a collection of Git and GitHub CLI aliases designed to streamline your workflow.
*   **install.sh**: An installation script that automates the setup of aliases and configuration for Git.

Installation Instructions
-------------------------

Follow these steps to install the configuration on your machine:

### 1\. Clone the Repository

First, clone this repository to your local machine:

    git clone https://github.com/Charlesreilly0/dev-git-config.git
    cd dev-git-config
    

### 2\. Run the Installation Script

The installation script will set up your Git configuration and aliases:

    ./install.sh
    

> **Note**: Make sure you have GitHub CLI installed. If prompted, authenticate with GitHub by running:
> 
>     gh auth login

Aliases and Commands
--------------------

Here’s a list of the Git and GitHub CLI aliases included in this configuration:

### Git Aliases

Alias

Command

Description

`st`

`status`

Shows the current working directory status.

`cm`

`commit -m`

Commits with a message.

`co`

`checkout`

Checks out a branch.

`br`

`branch`

Lists branches.

`lg`

`log --oneline --graph --all --decorate`

Displays a simplified, visual Git log with branches and tags.

`amend`

`commit --amend --no-edit`

Amends the last commit without changing the message.

`rb`

`rebase`

Starts a rebase.

`stashp`

`stash pop`

Applies stashed changes and removes them from stash.

`chp`

`cherry-pick`

Applies a commit from another branch.

`bis`

`bisect`

Starts a bisect to find a bug.

### GitHub CLI Aliases

Alias

Command

Description

`openrepo`

Opens GitHub repo in the browser

Opens the GitHub repository for the current project in your default browser.

`pr`

`gh pr create -f`

Creates a pull request for the current branch.

`prlist`

`gh pr list`

Lists all open pull requests in the repository.

`issues`

`gh issue list`

Lists all open issues in the repository.

`checkoutpr`

`gh pr checkout`

Checks out a pull request by number.

Usage
-----

After running the installation script, you can use any alias as shown above. Enjoy your customized Git setup!

If you have any questions or need further customization, feel free to reach out. This configuration was created with simplicity and developer efficiency in mind—\*for devs, by a dev\*!

Contributing
------------

Contributions are welcome! If you have suggestions for new aliases or improvements to the installation script, please feel free to fork this repository and submit a pull request.

License
-------

This project is open-source and available under the MIT License.

Happy coding! 🚀
