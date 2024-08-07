# Linux环境下的Emacs配置文件

### 编译安装Emacs编辑器

#### 官网下载或克隆Emacs源码
执行`./configure`命令时查看错误提示，安装相应的依赖库，直到没有错误提示为止。

```sh
$ git clone https://github.com/emacs-mirror/emacs.git
####################################################################################################
$ cd emacs && toolbox enter
$ sudo dnf install -y make automake gcc gcc-c++ kernel-devel gtk3-devel libjpeg-devel libXpm-devel \
giflib-devel libtiff-devel gnutls-devel ncurses-devel jansson-devel librsvg2-devel libXft-devel \
libX11-devel libpng-devel pkgconfig texinfo libgccjit libgccjit-devel dbus-devel texi2html \
dbus-glib-devel freetype-devel glib2-devel cairo-devel harfbuzz-devel libtree-sitter-devel
####################################################################################################
$ cd emacs && distrobox enter opensuse
$ sudo zypper in git make automake gcc gcc-c++ kernel-devel gtk3-devel libjpeg8-devel \
giflib-devel libgnutls-devel ncurses-devel libjansson-devel librsvg-devel libgccjit-devel \
tree-sitter-devel makeinfo gawk libXpm-devel texi2html
####################################################################################################
# (Stable) $ git checkout emacs-29
$ ./autogen.sh
$ ./configure --prefix=$HOME/.opt/emacs --exec-prefix=$HOME/.opt/emacs --with-xpm --with-harfbuzz \
--with-pop --with-tiff --with-rsvg --with-webp --with-cairo --with-modules --with-mailutils \
--with-jpeg --with-gif --with-json --with-dbus --with-xft --without-gpm --with-png --with-threads \
--with-tree-sitter --without-x --with-pgtk --with-native-compilation=yes --with-sqlite3 \
--with-wide-int --with-xinput2
$ make && make install
```

#### 创建桌面启动文件
编辑`emacs.desktop`桌面文件，放在`~/.local/share/applications`目录下。

```sh
[Desktop Entry]
Name=Emacs
GenericName=Text Editor
Comment=Edit text
Exec=/var/home/lhjok/.opt/emacs/bin/emacs %F
Icon=/var/home/lhjok/.opt/emacs/share/icons/hicolor/scalable/apps/emacs.svg
Type=Application
Terminal=false
Categories=Development;TextEditor;
StartupWMClass=Emacs
Keywords=Text;Editor;
```

#### 安装图标字体和更新插件源
为了使图标正常工作，安装此软件包中包括的资源字体非常重要。

```sh
M-x nerd-icons-install-fonts
M-x all-the-icons-install-fonts
M-x package-refresh-contents
```

#### 安装各语言补全后端
- Js语言需要安装Tsserver补全后端，
- Go语言需要安装Gopls补全后端，
- Rust语言需要安装Rust.Analysis补全后端，
- C/C++语言需要安装Clangd补全后端[下载](https://github.com/clangd/clangd/releases/latest)，
- 解压到PATH环境目录下。

```sh
$ npm install -g typescript
$ pip install "python-lsp-server[all]"
$ pip install -U jedi-language-server
$ pipx install "python-lsp-server[all]"
$ pipx install jedi-language-server
$ go install golang.org/x/tools/gopls@latest
$ rustup component add rls rust-analysis rust-src
$ git clone https://github.com/rust-analyzer/rust-analyzer.git
$ cd rust-analyzer
$ cargo xtask install --server
$ cargo install ripgrep
$ rustup +nightly component add rust-analyzer-preview
```

### 一个配置文件搞定所有事情
Emacs最吸引我的就是其强大的配置能力和灵活性，一个配置文件就可以自动完成到最佳状态。