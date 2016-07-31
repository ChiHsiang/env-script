#!/usr/bin/env sh

brew update && brew install pyenv
echo '#python env path' >> ~/.bash_profile
echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bash_profile
echo 'export PYENV_ROOT=/usr/local/var/pyenv' >> ~/.bash_profile

if [[ -x "$(which pyenv)" ]]; then
  xcode-select --install
  pyenv install 3.5.2 && echo "Succeed Install python 3.5.2"
fi

if [[ -x "$(which pip)" ]]; then
  pip install ipython && echo "Succeed Install ipython"
fi

echo "Complete it"
