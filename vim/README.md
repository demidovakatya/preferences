# vim settings

```sh
cp vimrc ~/.vimrc

mkdir ~/.vim
cp -R ./autoload ~/.vim/
cp -R ./colors ~/.vim/
cp -R ./syntax ~/.vim/

source ~/.vimrc
```

## `pathogen`

installation:

```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```
add this to your `~/.vimrc`

```
execute pathogen#infect()
```

