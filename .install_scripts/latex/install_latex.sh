#! usr/bin/bash

# texlive
# https://tug.org/texlive/quickinstall.html

yes Y | sudo apt install perl

mkcdir $HOME/personal/texlive/

curl -L -o install-tl-unx.tar.gz https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz

zcat <install-tl-unx.tar.gz | tar xf -

cd install-tl-*/

sudo perl ./install-tl --no-interaction

echo $'\n\n# Texlive bin path:\nexport PATH=/usr/local/texlive/$(date +%Y)/bin/x86_64-linux/:$PATH' >>~/.bashrc

# latexindent dependency

sudo apt-get install libyaml-tiny-perl libfile-homedir-perl

# latex_templates
