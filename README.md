# LINUX环境下的Emacs配置文件

### 每一条配置语句都经过严格验证。
* Email：lhjok@live.cn

### 编译安装Emacs编辑器。

#### 官网下载Emacs源码，解压到用户(.opt)目录下：

```sh
toolbox enter
./autogen.sh
./configure --with-xpm --with-jpeg --with-tiff --with-gif --with-png \
--with-rsvg --with-cairo --with-modules --with-dbus --with-xft --with-json \
--with-threads --without-gpm --with-harfbuzz
make
```

#### 编辑桌面启动文件(emacs.desktop)：

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

### 一个配置文件搞定所有事情：
EMACS最吸引我的就是其强大的配置能力和灵活性，一个配置文件就可以自动安装所有的插件。