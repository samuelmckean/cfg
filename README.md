### Setup on new machine
1. Add alias for config to git to `.zshrc` or `.bashrc`
  ```
  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  ```
2. Clone dotfiles
  ```
  git clone --bare <git-repo-url> $HOME/.cfg
  ```
3. Redefine alias in new shell scope
  ```
  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  ```
4. Checkout content from repo
  ```
  config checkout
  ```

More info here: https://www.atlassian.com/git/tutorials/dotfiles
