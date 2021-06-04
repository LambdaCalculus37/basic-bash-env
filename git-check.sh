#!/bin/bash

# May redo as here-doc later on.

GIT_INSTALL_TIP="Git is not installed. Please install Git from https://git-scm.com/downloads or from your Linux distro's software repository."
GIT_VERSION_TIP="Your version of Git is obsolete. Please install the latest version from https://git-scm.com/downloads or run an update on your Linux distro's software repository."
GIT_CONFIG_TIP="Your Git environment has not been configured. Please run basic configuration first."


git || echo $GIT_INSTALL_TIP

git --version || echo $GIT_VERSION_TIP

git config --list || echo $GIT_CONFIG_TIP
