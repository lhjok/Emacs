# Linux环境下的Emacs配置文件

### 配置文件根据自己需求量身定制
* Email：lhjok@live.cn

### 编译安装Emacs编辑器

#### 官网下载Emacs源码，解压到(~/.opt)目录下
执行`./configure`命令时查看错误提示，安装相应的依赖库，直到没有错误提示为止。

```sh
$ cd emacs
$ toolbox enter
$ ./autogen.sh
$ ./configure --with-xpm --with-jpeg --with-tiff --with-gif --with-png \
--with-rsvg --with-cairo --with-modules --with-dbus --with-xft --with-json \
--with-threads --without-gpm --with-harfbuzz --with-pop --with-mailutils
$ make
```

#### 创建桌面启动文件
编辑`emacs.desktop`桌面文件，放在`~/.local/share/applications`目录下。

```sh
[Desktop Entry]
Name=Emacs
GenericName=Text Editor
Comment=Edit text
Exec=/var/home/lhjok/.opt/emacs/src/emacs %F
Icon=/var/home/lhjok/.opt/emacs/etc/images/icons/hicolor/scalable/apps/emacs.svg
Type=Application
Terminal=false
Categories=Development;TextEditor;
StartupWMClass=Emacs
Keywords=Text;Editor;
```

#### 安装图标字体
为了使图标正常工作，安装此软件包中包括的资源字体非常重要。

```sh
M-x all-the-icons-install-fonts
```

### 一个配置文件搞定所有事情
Emacs最吸引我的就是其强大的配置能力和灵活性，一个配置文件就可以自动安装所有的插件。
