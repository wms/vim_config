This is my vim config. There are many like it but this one is mine.

It is supercharged for AngularJS development; it uses some great Javascript indentation and syntax plugins.

It also uses YouCompleteMe + tern.js + AngularJS plugin for mind-blowing completion of plain javascript as well as resolving dependencies injected through AngularJS.

Installation
=

```
git clone --recursive https://github.com/warrenseymour/vim_config.git ~/vim_config
ln -s ~/vim_config/.vimrc ~/.vimrc
vim +BundleInstall +qall
pip install --user git+git://github.com/Lokaltog/powerline
cd ~/.vim/bundle/YouCompleteMe && ./install.sh
cd ~/.vim/bundle/tern_for_vim && npm install
wget https://github.com/angular-ui/AngularJS-tern-plugin/raw/master/angular.js -P ~/.vim/bundle/tern_for_vim/node_modules/tern/plugin
```

I use a patched version of Source Code Pro as it's a great monospaced font and contains glyphs which work flawlessly with Powerline. To install it under Ubuntu:

```
mkdir -p ~/.local/share/fonts
wget https://github.com/Lokaltog/stuff/raw/master/sourcecodepro-patched.otf -P ~/.local/share/fonts
```
