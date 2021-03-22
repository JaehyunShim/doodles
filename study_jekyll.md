# Study Jekyll

## 1. Install
```sh
$ sudo apt-get install ruby ruby-dev build-essential
```

## 2. Configure Settings
```sh
$ echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
$ echo 'export GEM_HOME=$HOME/gems' >> ~/.bashrc
$ echo 'export PATH=$HOME/gems/bin:$PATH' >> ~/.bashrc
$ source ~/.bashrc
```

## 3. Setup a hosting server
- Usage
```sh
# Install jekyll, bundler
$ gem install jekyll bundler

# Make bundle folder
$ cd ~/path_to_dir/
$ bundle install
$ bundle update

# Server
$ bundle exec jekyll serve --incremental

# Build (When you change configurations)
$ cd ~/path_to_dir/
$ bundle exec jekyll build

# Repository -> Setting -> GitHub Pages -> Source (Branch, Path) -> Save
```

## 4. Jaehyun Shim Github Page
- https://jaehyunshim.github.io/

## 5. Reference
- https://jekyllrb-ko.github.io/
