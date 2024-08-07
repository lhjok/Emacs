;;####=优先启动设置:=###############################################################################################
;;(menu-bar-mode 0)    ;;取消菜单栏
(tool-bar-mode 0)    ;;取消工具栏
(scroll-bar-mode 0)    ;;取消滚动条
(setq-default cursor-type 'bar)    ;;显示细条光标
(global-font-lock-mode t)    ;;进行语法加亮
(setq inhibit-startup-message t)    ;;关闭Emacs启动时的画面
(setq initial-scratch-message nil)    ;;关闭多余缓冲区内文字
(setq message-log-max nil)    ;;清除"Messages"缓冲区信息
(kill-buffer "*Messages*")    ;;关闭"Messages"缓冲区
(setq ac-use-quick-help nil)    ;;关闭帮助模式
(setq ring-bell-function 'ignore)    ;;关闭提示音和闪屏警报
(setq auto-save-default nil)    ;;关闭自动保存文件
(setq make-backup-files nil)    ;;关闭备份文件
(setq create-lockfiles nil)    ;;关闭创建锁文件
(setq mouse-drag-copy-region nil)    ;;禁止采用鼠标选取后就进入剪切板
(set-default 'truncate-lines t)    ;;关闭自动换行功能
(setq pop-up-windows nil)    ;;禁止自动弹出窗口
(global-hl-line-mode 0)    ;;关闭高亮光标所在行
(cua-mode t)    ;;打开（C-x剪切）/（C-c拷贝）/（C-v粘贴）功能键
(show-paren-mode t)    ;;打开括号匹配显示模式
(desktop-save-mode 0)    ;;关闭打开上一次编辑的文件
(electric-pair-mode t)    ;;开启自带自动补全括号
(global-ede-mode t)    ;;开启自带EDE模块
(mouse-wheel-mode t)    ;;开启鼠标滚轮
(ido-mode t)    ;;打开文件自动补全
(put 'scroll-left 'disabled nil)    ;;打开水平滚屏功能
(put 'mouse-set-point 'CUA 'move)    ;;开启鼠标点选功能
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))    ;;一次滚动一行
(setq mouse-wheel-follow-mouse 't)    ;;鼠标滚动窗口
(setq scroll-step 1
      scroll-conservatively 10000)    ;;平滑滚动
(setq column-number-mode t)    ;;显示列号在状态栏
(setq line-number-mode t)    ;;显示行号在状态栏
(display-time-mode t)    ;;显示时间
(setq display-time-24hr-format t)    ;;时间使用24小时制
(setq show-paren-style 'parenthesis)    ;;括号匹配时可以高亮显示另外一边的括号
(setq frame-title-format "emacs@%b")    ;;显示文件标题
(defalias 'yes-or-no-p 'y-or-n-p)    ;;简写Yes/No
(setq mouse-yank-at-point t)    ;;粘贴于光标处,而不是鼠标指针处
(icomplete-mode t)    ;;迷你缓冲区自动补全
(setq make-backup-files nil)    ;;不要生成临时文件
(setq isearch-allow-scroll t)    ;;查找时是可以滚动屏幕的
(setq ibuffer-sorting-mode 'recency)    ;;用最近打开模式显示
(setq whitespace-global-mode t)     ;;全局检测多余空格
(setq undo-outer-limit 50000)    ;;撤销限制
(setq default-directory "~/")    ;;设置打开文件的缺省路径
(setq default-major-mode 'text-mode)    ;;打开缺省文本模式
(semantic-mode t)    ;;开启自带智能补全引擎 (下面一行设置头文件路径)
(global-semantic-idle-summary-mode t)    ;;加载Semantic辅助模块
(global-semantic-show-parser-state-mode t)    ;;设置Semantic显示出当前解析状态
(setq hippie-expand-try-functions-list    ;;自带补全列表
      '(try-expand-dabbrev    ;;当前窗口内匹配
        try-expand-dabbrev-visible    ;;可见窗口内匹配
        try-expand-dabbrev-all-buffers))    ;;所有缓冲区内匹配
(setq-default indent-tabs-mode nil)    ;;不用"TAB"字符来缩进, 这会引起很多奇怪的错误
(setq-default tab-width 4)    ;;设置缩进为4个字符
(setq-default c-basic-offset 4)    ;;设置C/C++/java缩进位数
(setq-default line-spacing 2)    ;;设置代码行间距
(setq c-default-style "linux")    ;;不缩进括号 (缩进方式)
(defun sgml-mode-indent-setup ()
  (setq sgml-basic-offset 4))
(add-hook 'sgml-mode-hook 'sgml-mode-indent-setup)    ;;设置HTML缩进位数
(defun nxml-mode-indent-setup ()
  (setq nxml-child-indent 4))
(add-hook 'nxml-mode-hook 'nxml-mode-indent-setup)    ;;设置XML缩进位数
(setq tab-stop-list (number-sequence 4 400 4))    ;;缩进列表位 (100个缩进位,每次缩4位)
(transient-mark-mode 1)    ;;EmacsWiki里面写的
(setq cua-auto-tabify-rectangles nil)    ;;EmacsWiki里面写的
(setq gdb-many-windows t)    ;;开启GDB多窗口调试模式
(setq compile-command nil)    ;;默认编译参数 (把nil改成"参数"即可)
(setq package-native-compile t)    ;;在安装包时支持提前本地编译
;;(setq pixel-scroll-precision-large-scroll-height 60)    ;;支持像素滚动（鼠标）
;;(setq pixel-scroll-precision-interpolation-factor 8.0)    ;;支持像素滚动（鼠标）

;;####=文档编码设置:=###############################################################################################
(setq current-language-environment "UTF-8")    ;;设置中文环境
(setq locale-coding-system 'utf-8)    ;;设置中文环境
(prefer-coding-system 'utf-8)    ;;优先读取指定文件编码
(setq default-buffer-file-coding-system 'utf-8)    ;;缓冲区编码
(setq file-name-coding-system 'utf-8)    ;;文件名编码
(set-selection-coding-system 'utf-8)    ;;选择块编码
(set-terminal-coding-system 'utf-8)    ;;终端编码
(set-keyboard-coding-system 'utf-8)    ;;键盘输入编码
(set-frame-font "Consolas-13" nil t)    ;;设置英文字体
(set-fontset-font (frame-parameter nil 'font)    ;;设置中文字体
                  'han '("Source Code Pro" . "unicode-bmp"))

;;####=插件包管理源设置:=###########################################################################################
(require 'package)
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")    ;;官方GNU源
        ("melpa" . "https://melpa.org/packages/")))    ;;第三方Melpa源
(package-initialize)

;;####=自动安装插件包:=#############################################################################################
(when (not package-archive-contents)
  (package-refresh-contents))    ;;自动初始化源安装列表
(when (not (package-installed-p 'undo-tree))
  (package-install 'undo-tree))    ;;自动安装撤销插件包
(when (not (package-installed-p 'js2-mode))
  (package-install 'js2-mode))    ;;自动安装JavaScript语言插件包
(when (not (package-installed-p 'rjsx-mode))
  (package-install 'rjsx-mode))    ;;自动安装React语言插件包
(when (not (package-installed-p 'typescript-mode))
  (package-install 'typescript-mode))    ;;自动安装TypeScript语言插件包
(when (not (package-installed-p 'less-css-mode))
  (package-install 'less-css-mode))    ;;自动安装Less语言插件包
(when (not (package-installed-p 'scss-mode))
  (package-install 'scss-mode))    ;;自动安装Scss语言插件包
(when (not (package-installed-p 'sass-mode))
  (package-install 'sass-mode))    ;;自动安装Sass语言插件包
(when (not (package-installed-p 'tide))
  (package-install 'tide))    ;;自动安装Tide补全插件包
(when (not (package-installed-p 'python-mode))
  (package-install 'python-mode))    ;;自动安装Python语言插件包
(when (not (package-installed-p 'go-mode))
  (package-install 'go-mode))    ;;自动安装GO语言插件包
(when (not (package-installed-p 'rustic))
  (package-install 'rustic))    ;;自动安装Rust语言插件包
(when (not (package-installed-p 'toml-mode))
  (package-install 'toml-mode))    ;;自动安装Toml插件包
(when (not (package-installed-p 'json-mode))
  (package-install 'json-mode))    ;;自动安装Json插件包
(when (not (package-installed-p 'yaml-mode))
  (package-install 'yaml-mode))    ;;自动安装Yaml插件包
(when (not (package-installed-p 'lsp-mode))
  (package-install 'lsp-mode))    ;;自动安装LSP插件包
(when (not (package-installed-p 'lsp-jedi))
  (package-install 'lsp-jedi))    ;;自动安装LSP-JEDI插件包
(when (not (package-installed-p 'flycheck))
  (package-install 'flycheck))    ;;自动安装flycheck语法检查插件包
(when (not (package-installed-p 'company))
  (package-install 'company))    ;;自动安装company自动补全插件包
(when (not (package-installed-p 'symbol-overlay))
  (package-install 'symbol-overlay))    ;;自动安装symbol-overlay自动高亮相同词插件包
(when (not (package-installed-p 'all-the-icons))
  (package-install 'all-the-icons))    ;;自动安装all-the-icons图标主题插件包
(when (not (package-installed-p 'multiple-cursors))
  (package-install 'multiple-cursors))    ;;自动安装multiple-cursors多光标功能
(when (not (package-installed-p 'expand-region))
  (package-install 'expand-region))    ;;自动安装expand-region扩展所选区域
(when (not (package-installed-p 'doom-themes))
  (package-install 'doom-themes))    ;;自动安装doom-themes主题插件包
(when (not (package-installed-p 'doom-modeline))
  (package-install 'doom-modeline))    ;;自动安装doom-modeline主题插件包
(when (not (package-installed-p 'treemacs))
  (package-install 'treemacs))    ;;自动安装treemacs文件浏览器
(when (not (package-installed-p 'magit))
  (package-install 'magit))    ;;自动安装magit版本控制插件
(when (not (package-installed-p 'popwin))
  (package-install 'popwin))    ;;自动安装popwin弹出窗口管理器
(when (not (package-installed-p 'projectile))
  (package-install 'projectile))    ;;自动安装projectile项目管理器
(when (not (package-installed-p 'ivy))
  (package-install 'ivy))    ;;自动安装ivy缓冲区补全模块
(when (not (package-installed-p 'counsel))
  (package-install 'counsel))    ;;自动安装counsel增强文件管理功能
(when (not (package-installed-p 'swiper))
  (package-install 'swiper))    ;;自动安装swiper增强查找功能
(when (not (package-installed-p 'iedit))
  (package-install 'iedit))    ;;自动安装iedit增强替换功能
(when (not (package-installed-p 'wgrep))
  (package-install 'wgrep))    ;;自动安装wgrep增强查找替换功能
(when (not (package-installed-p 'vterm))
  (package-install 'vterm))    ;;自动安装vterm虚拟终端
(when (not (package-installed-p 'quelpa))
  (package-install 'quelpa))    ;;自动安装Quelpa模块
(when (not (package-installed-p 'quelpa-use-package))
  (package-install 'quelpa-use-package))

;;####=默认加载插件设置:=###########################################################################################
(require 'quelpa)    ;;导入Quelpa模块
(require 'quelpa-use-package)    ;;导入包管理Quelpa插件
(require 'undo-tree)    ;;导入反撤销功能
(require 'js2-mode)    ;;导入JavaScript语言编辑模式
(require 'rjsx-mode)    ;;导入React语言插件包
(require 'typescript-mode)    ;;导入TypeScript语言插件包
(require 'less-css-mode)    ;;导入Less语言插件包
(require 'scss-mode)    ;;导入Scss语言插件包
(require 'sass-mode)    ;;导入Sass语言插件包
(require 'tide)    ;;导入Tide自动补全模块
(require 'rustic)    ;;导入Rust语言编辑模式
(require 'toml-mode)    ;;导入Toml编辑模式
(require 'json-mode)    ;;导入Json编辑模式
(require 'yaml-mode)    ;;导入Yaml编辑模式
(require 'lsp-mode)    ;;导入lsp自动补全后端
(require 'lsp-jedi)    ;;导入LSP-JEDI自动补全后端
(require 'python-mode)    ;;导入GO语言编辑模式
(require 'go-mode)    ;;导入GO语言编辑模式
(require 'flycheck)    ;;导入语法检查插件包
(require 'company)    ;;导入自动补全插件包
(require 'symbol-overlay)    ;;导入自动高亮相同词插件包
(require 'all-the-icons)    ;;导入all-the-icons图标主题插件包
(require 'multiple-cursors)    ;;导入multiple-cursors多光标功能
(require 'expand-region)    ;;导入expand-region扩展所选区域
(require 'doom-themes)    ;;导入doom-themes主题插件包
(require 'doom-modeline)    ;;导入doom-modeline主题插件包
(require 'treemacs)    ;;导入treemacs文件浏览器
(require 'magit)    ;;导入magit版本控制插件
(require 'popwin)    ;;导入popwin弹出窗口管理器
(require 'projectile)    ;;导入projectile项目管理器
(require 'ivy)    ;;导入ivy缓冲区补全模块
(require 'counsel)    ;;导入counsel增强文件管理功能
(require 'swiper)    ;;导入swiper增强查找功能
(require 'iedit)    ;;导入iedit增强替换功能
(require 'wgrep)    ;;导入wgrep增强查找替换功能
(require 'vterm)    ;;导入vterm虚拟终端
(require 'uniquify)    ;;处理缓冲区同名文件

;;####=函数定义区域:=###############################################################################################
(defun setup-tide-mode()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (company-mode +1))
;;更改comint终端只读模式为可读写
(defun my-compilation-mode()
  (interactive)
  (read-only-mode -1)
  (comint-mode))
;;一键开启虚拟终端
(defun my-vterm-mode()
  (interactive)
  (progn
    (if (not (get-buffer-window "*vterm*"))
        (progn
          (split-window-vertically
           ( - (window-height (get-buffer-window "*vterm*")) 15))
          (other-window 1) (vterm)
          (pop-to-buffer-same-window "*vterm*")))))
;;一键进入GDB调试环境
(defun gdb-quick-run()
  (interactive)
  (gdb (gud-query-cmdline 'gdb))(tool-bar-mode 1))
;;一键编译运行当前JS文件(JavaScript语言)
(defun nodejs-quick-run()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "distrobox enter opensuse -- node " (buffer-name (current-buffer))))  ;;openSUSE Aeon
;;    (compile (concat "toolbox run node " (buffer-name (current-buffer))))    ;;Fedora Silverblue
    (end-of-buffer)))
;;一键编译并运行(Go语言)
(defun go-quick-run()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "distrobox enter opensuse -- go run " (buffer-name (current-buffer))))  ;;openSUSE Aeon
;;    (compile (concat "toolbox run go run " (buffer-name (current-buffer))))    ;;Fedora Silverblue
    (end-of-buffer)))
;;一键编译生成可执行文件(Go语言)
(defun go-quick-build()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "distrobox enter opensuse -- go build " (buffer-name (current-buffer))))  ;;openSUSE Aeon
;;(compile (concat "toolbox run go build " (buffer-name (current-buffer))))    ;;Fedora Silverblue
    (end-of-buffer)))
;;一键编译并运行(Rust语言)
(defun rust-compile-run()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "distrobox enter opensuse -- cargo run")    ;;openSUSE Aeon
;;        (compile "toolbox run cargo run")    ;;Fedora Silverblue
      (compile (concat "distrobox enter opensuse -- rustc " (buffer-file-name))))    ;;openSUSE Aeon
;;      (compile (concat "toolbox run rustc " (buffer-file-name))))    ;;Fedora Silverblue
    (end-of-buffer)))
;;一键编译生成可执行文件(Rust语言)
(defun rust-compile-build()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "distrobox enter opensuse -- cargo build")    ;;openSUSE Aeon
;;        (compile "toolbox run cargo build")    ;;Fedora Silverblue
      (compile (concat "distrobox enter opensuse -- rustc " (buffer-file-name))))    ;;openSUSE Aeon
;;      (compile (concat "toolbox run rustc " (buffer-file-name))))    ;;Fedora Silverblue
    (end-of-buffer)))
;;一键编译生成可执行文件(Rust语言-发布)
(defun rust-compile-build-release()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "distrobox enter opensuse -- cargo build --release")    ;;openSUSE Aeon
;;        (compile "toolbox run cargo build --release")    ;;Fedora Silverblue
      (compile (concat "distrobox enter opensuse -- rustc " (buffer-file-name))))    ;;openSUSE Aeon
;;      (compile (concat "toolbox run rustc " (buffer-file-name))))    ;;Fedora Silverblue
    (end-of-buffer)))

;;####=【Use-Package】设置区域:=####################################################################################
(use-package rustic :ensure t)    ;;开启Rust语言编辑模式
(use-package all-the-icons :ensure t)    ;;开启all-the-icons图标主题
(use-package treemacs :ensure t)    ;;开启treemacs文件浏览器
(use-package vterm :ensure t
  :bind (:map vterm-mode-map ("C-S-v" . #'vterm-yank))
  :config (setq vterm-kill-buffer-on-exit t))    ;;开启虚拟终端
(use-package doom-themes    ;;开启doom-themes主题
  :ensure t :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-one-light t)
  (doom-themes-visual-bell-config)
  (setq doom-themes-treemacs-theme "doom-atom")
  (doom-themes-treemacs-config)
  (doom-themes-org-config))
(use-package lsp-jedi :ensure t)
(use-package copilot :quelpa
  (copilot    ;;自动安装Copilot人工智能模块
   :fetcher github
   :repo "zerolfx/copilot.el"
   :branch "main"
   :files ("dist" "*.el")))
(require 'copilot)

;;####=插件功能设置:=###############################################################################################
(global-undo-tree-mode)    ;;开启反撤销功能
(popwin-mode 1)    ;;开启popwin弹出窗口管理器
(recentf-mode 1)    ;;开启最近打开的文件
(ivy-mode 1)    ;;开启ivy模块
(projectile-mode +1)    ;;开启项目projectile管理器
(doom-modeline-mode 1)    ;;开启doom-modeline主题
(load-library "hideshow")    ;;开启代码折叠功能
(setq magit-show-long-lines-warning nil)    ;;关闭Magit长行警告
(setq quelpa-update-melpa-p nil)    ;;禁止启动时更新MELPA存储库
(setq quelpa-checkout-melpa-p nil)    ;;禁用所有MELPA存储库的获取
(setenv "PATH" (concat (getenv "PATH") ":~/.cargo/bin"))    ;;手动添加PATH路径到Emacs终端环境
(setq exec-path (append exec-path '("~/.cargo/bin")))    ;;手动添加PATH路径到Emacs执行环境
(setenv "PATH" (concat (getenv "PATH") ":~/.opt/go/bin"))    ;;手动添加PATH路径到Emacs终端环境
(setq exec-path (append exec-path '("~/.opt/go/bin")))    ;;手动添加PATH路径到Emacs执行环境
(setenv "PATH" (concat (getenv "PATH") ":~/.nvm/versions/node/v21.7.3/bin"))    ;;手动添加PATH路径到Emacs终端环境
(setq exec-path (append exec-path '("~/.nvm/versions/node/v21.7.3/bin")))    ;;手动添加PATH路径到Emacs执行环境
(setenv "PATH" (concat (getenv "PATH") ":~/.npm-global/bin"))    ;;手动添加PATH路径到Emacs终端环境
(setq exec-path (append exec-path '("~/.npm-global/bin")))    ;;手动添加PATH路径到Emacs执行环境
(set-face-attribute 'mode-line nil :family "Microsoft YaHei" :height 122)   ;;状态栏字体("Cantarell" 125)
(set-face-attribute 'mode-line-inactive nil :family "Microsoft YaHei" :height 122)   ;;状态栏字体("Cantarell" 125)
(flycheck-add-mode 'javascript-eslint 'rjsx-mode)
(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)
(flycheck-add-next-checker 'javascript-eslint 'javascript-tide 'append)
(autoload 'js2-mode "js2-mode" nil t)
(autoload 'go-mode "go-mode" nil t)
(autoload 'python-mode "python-mode" nil t)
(autoload 'scss-mode "scss-mode" nil t)
(autoload 'sass-mode "sass-mode" nil t)
(autoload 'less-css-mode "less-css-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))    ;;默认GO文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))    ;;默认JS文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))    ;;默认TS文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))    ;;默认Scss文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.sass\\'" . sass-mode))    ;;默认Sass文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))    ;;默认Less文件进入编辑模式
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))    ;;默认JSX文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))    ;;默认Py文件进入编辑模式
(add-to-list 'interpreter-mode-alist '("python" . python-mode))    ;;设置解释器模块列表
(add-to-list 'auto-mode-alist '("\\.toml\\'" . toml-mode))    ;;默认Toml文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))    ;;默认Json文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))    ;;默认Yaml文件进入编辑模式
;;(add-hook 'c-mode-hook 'eglot-ensure)    ;;使用eglot作为C的LSP客户端
;;(add-hook 'c++-mode-hook 'eglot-ensure)    ;;使用eglot作为C++的LSP客户端
;;(add-hook 'go-mode-hook 'eglot-ensure)    ;;使用eglot作为GO的LSP客户端
(add-hook 'c-mode-hook #'lsp-deferred)    ;;使用lsp-mode作为C的LSP客户端
(add-hook 'c++-mode-hook #'lsp-deferred)    ;;使用lsp-mode作为C++的LSP客户端
(add-hook 'go-mode-hook #'lsp-deferred)    ;;使用lsp-mode作为GO的LSP客户端
(add-hook 'python-mode-hook #'lsp-deferred)    ;;使用lsp-mode作为Python的LSP客户端
(add-hook 'js2-mode-hook #'setup-tide-mode)    ;;开启JavaScript语言Tide自动补全后端
(add-hook 'rjsx-mode-hook #'setup-tide-mode)    ;;开启React语言Tide自动补全后端
(add-hook 'typescript-mode-hook #'setup-tide-mode)    ;;开启TypeScript语言Tide自动补全后端
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'compilation-mode-hook 'my-compilation-mode)
(add-hook 'c-mode-hook 'hs-minor-mode)    ;;C文件折叠功能
(add-hook 'c++-mode-hook 'hs-minor-mode)    ;;C++文件折叠功能
(add-hook 'python-mode-hook 'hs-minor-mode)    ;;Python文件折叠功能
(add-hook 'js2-mode-hook 'hs-minor-mode)    ;;JS文件折叠功能
(add-hook 'rjsx-mode-hook 'hs-minor-mode)    ;;JSX文件折叠功能
(add-hook 'typescript-mode-hook 'hs-minor-mode)    ;;TS文件折叠功能
(add-hook 'go-mode-hook 'hs-minor-mode)    ;;GO文件折叠功能
(add-hook 'rustic-mode-hook 'hs-minor-mode)    ;;Rust文件折叠功能
(add-hook 'vterm-mode-hook (lambda()    ;;设置终端字体
  (set (make-local-variable 'buffer-face-mode-face) 'Cantarell)
  (buffer-face-mode t)))
(add-hook 'prog-mode-hook 'copilot-mode)    ;;开启Copilot
(add-to-list 'copilot-major-mode-alist '("go" . "go"))
(add-to-list 'copilot-major-mode-alist '("rustic" . "rust"))
(add-to-list 'copilot-major-mode-alist '("c++" . "cpp"))
(add-to-list 'copilot-major-mode-alist '("js2" . "javascript"))
(add-to-list 'copilot-major-mode-alist '("rjsx" . "typescriptreact"))
(add-to-list 'copilot-major-mode-alist '("python" . "python"))
;;(put 'eglot-node 'flymake-overlay-control nil)    ;;关闭eglot-node覆盖flymake
;;(put 'eglot-warning 'flymake-overlay-control nil)    ;;关闭eglot-warning覆盖flymake
;;(put 'eglot-error 'flymake-overlay-control nil)    ;;关闭eglot-error覆盖flymake

;;####=【SETQ】设置区域:=###########################################################################################
(setq ivy-use-virtual-buffers t)    ;;添加近期打开的文件
(setq enable-recursive-minibuffers t)    ;;开启递归Mini缓冲区
(setq recentf-max-menu-items 10)    ;;设置最近打开的文件显示数量
(setq recentf-max-saved-items 10)    ;;设置最近打开的文件保存数量
(setq doom-modeline-height 30)    ;;设置状态栏高度
(setq doom-modeline-modal-icon t)    ;;开启状态栏图标显示
(setq rustic-lsp-server 'rust-analyzer)    ;;默认rust-analyzer作为Rust的LSP服务端
(setq rustic-indent-method-chain t)    ;;开启链式方法调用的缩进风格
;;(setq eglot-rust-server 'rust-analyzer)    ;;Eglot开启rust-analyzer作为Rust的LSP服务端
;;(setq rustic-lsp-client 'eglot)    ;;使用Eglot作为Rust的LSP客户端
;;(setq-default eglot-workspace-configuration    ;;Eglot配置Gopls
;;   '((:gopls .
;;     ((staticcheck . t)
;;      (matcher . "CaseSensitive")))))
(setq lsp-auto-guess-root t)    ;;自动选项目根目录
(when (not (display-graphic-p))
  (setq flycheck-indication-mode nil))
(setq company-tooltip-limit 20)
(setq company-idle-delay 0.2)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
(setq gofmt-command "goreturns")
(setq special-display-buffer-names '("*compilation*"))    ;;分割编译窗口
(setq special-display-function
      (lambda (buffer &optional args)
        (split-window-horizontally ( / ( * (window-width) 2) 3))    ;;设置编译窗口大小
        (other-window 1) (switch-to-buffer buffer)    ;;切换到编译窗口
        (get-buffer-window buffer 0)))
(setq uniquify-buffer-name-style 'forward)    ;;区别缓冲区同名文件
(setq wgrep-auto-save-buffer t)    ;;`C-c-C-e'将更改应用于文件缓冲区后自动保存
(with-eval-after-load 'treemacs
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))
(setq undo-tree-auto-save-history t)    ;;自动保存临时文件
(setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))    ;;指定保存位置
(setq lsp-jedi-workspace-extra-paths
  (vconcat lsp-jedi-workspace-extra-paths
    ["~/.local/share/pipx/shared/lib/python3.11/site-packages"]))    ;;openSUSE Aeon 环境中使用
;;    ["~/.local/lib/python3.11/site-packages"]))    ;;Fedora Silverblue 环境中使用
(setq rustic-analyzer-command '("~/.cargo/bin/rust-analyzer"))

;;####=快捷键绑定:=#################################################################################################
(global-set-key (kbd "C-z") 'undo)    ;;撤销
(global-set-key (kbd "C-S-z") 'redo)    ;;反撤销
(global-set-key (kbd "C-y") 'redo)    ;;反撤销
(global-set-key (kbd "C-a") 'mark-whole-buffer)    ;;全选
(global-set-key (kbd "C-v") 'yank)    ;;粘贴
(global-set-key (kbd "M-x") 'counsel-M-x)    ;;打开(M-x)命令
(global-set-key (kbd "C-n") 'counsel-find-file)    ;;打开或新建文件
(global-set-key (kbd "C-o") 'projectile-find-file)    ;;打开项目文件
(global-set-key (kbd "C-p") 'projectile-switch-project)    ;;打开项目
(global-set-key (kbd "C-S-a") 'treemacs-add-project-to-workspace)    ;;添加项目到工作区
(global-set-key (kbd "C-S-d") 'treemacs-remove-project-from-workspace)    ;;工作区删除项目
(global-set-key (kbd "C-s") 'save-buffer)    ;;保存文件
(global-set-key (kbd "C-S-s") 'save-some-buffers)    ;;保存所有未保存的缓冲区
(global-set-key (kbd "C-f") 'swiper)    ;;查找关键词
;;(global-set-key (kbd "C-S-f") 'counsel-ag)    ;;查找整个项目关键词(ag)
(global-set-key (kbd "C-S-f") 'counsel-rg)    ;;查找整个项目关键词(rg)
(global-set-key (kbd "C-S-b") 'ivy-switch-buffer)    ;;查找历史/缓冲区文件
(global-set-key (kbd "C-r") 'iedit-mode)    ;;替换关键词
(global-set-key (kbd "C-S-r") 'projectile-replace)    ;;项目内查找与替换
(global-set-key (kbd "C-S-k") 'kill-buffer)    ;;关闭当前缓冲区
(global-set-key (kbd "C-w") 'delete-window)    ;;关闭当前窗口
(global-set-key (kbd "C-S-w") 'delete-other-windows)    ;;关闭其他窗口,除当前窗口外
(global-set-key (kbd "C-l") 'split-window-vertically)    ;;分割横窗口
(global-set-key (kbd "C-t") 'split-window-horizontally)    ;;分割纵窗口
(global-set-key (kbd "C-S-i") 'mc/edit-lines)    ;;选择一块区域在每行插入一个光标
(global-set-key (kbd "M-S-i") 'mc/edit-ends-of-lines)    ;;选择一块区域在每行末尾插入一个光标
(global-set-key (kbd "<escape>") 'er/expand-region)    ;;扩展所选区域
(global-set-key (kbd "<C-tab>") 'treemacs)    ;;显示和隐藏treemacs文件浏览器
(global-set-key (kbd "<M-next>") 'scroll-up)    ;;向下滚动屏幕
(global-set-key (kbd "<M-prior>") 'scroll-down)    ;;向上滚动屏幕
(global-set-key (kbd "<C-wheel-down>") 'scroll-up)    ;;向上滚动屏幕
(global-set-key (kbd "<C-wheel-up>") 'scroll-down)    ;;向下滚动屏幕
(global-set-key (kbd "<S-wheel-down>") 'scroll-left)    ;;向左滚动屏幕
(global-set-key (kbd "<S-wheel-up>") 'scroll-right)    ;;向右滚动屏幕
(global-set-key (kbd "<prior>") 'previous-buffer)    ;;上一个缓冲区
(global-set-key (kbd "<next>") 'next-buffer)    ;;下一个缓冲区
(global-set-key (kbd "<M-up>") 'windmove-up)    ;;向上移动窗口
(global-set-key (kbd "<M-down>") 'windmove-down)    ;;向下移动窗口
(global-set-key (kbd "<M-left>") 'windmove-left)    ;;向左移动窗口
(global-set-key (kbd "<M-right>") 'windmove-right)    ;;向右移动窗口
(global-set-key (kbd "<C-up>") 'enlarge-window)    ;;向上调整窗口大小
(global-set-key (kbd "<C-down>") 'shrink-window)    ;;向下调整窗口大小
(global-set-key (kbd "<C-left>") 'enlarge-window-horizontally)    ;;向左调整窗口大小
(global-set-key (kbd "<C-right>") 'shrink-window-horizontally)    ;;向右调整窗口大小
(global-set-key (kbd "<M-SPC>") 'hippie-expand)    ;;自带的自动补全
(global-set-key (kbd "M-/") 'comment-dwim)    ;;自带的多行注释
(global-set-key (kbd "C-+") 'start-kbd-macro)    ;;开始录制宏
(global-set-key (kbd "C-=") 'end-kbd-macro)    ;;结束宏录制
(global-set-key (kbd "M-n") 'symbol-overlay-jump-next)    ;;移动到下一个高亮相同词
(global-set-key (kbd "M-p") 'symbol-overlay-jump-prev)    ;;移动到上一个高亮相同词
(global-set-key (kbd "C-S-e") 'call-last-kbd-macro)    ;;执行上一次绑定的宏命令
(global-set-key (kbd "C-S-q") 'save-buffers-kill-emacs)    ;;退出程序
(global-set-key (kbd "C-{") 'hs-hide-block)    ;;折叠代码 (键绑定)
(global-set-key (kbd "C-}") 'hs-show-block)    ;;打开折叠 (键绑定)
(global-set-key (kbd "C-<") 'hs-hide-all)    ;;折叠全部代码 (键绑定)
(global-set-key (kbd "C->") 'hs-show-all)    ;;展开全部折叠 (键绑定)
(global-set-key (kbd "<f1>") 'other-window)    ;;窗口切换
(global-set-key (kbd "<f2>") 'symbol-overlay-mode)    ;;开启/关闭高亮相同词
(global-set-key (kbd "<f3>") 'gdb-quick-run)    ;;按"F3"一键进入GDB调试环境
(global-set-key (kbd "<f4>") 'projectile-compile-project)    ;;按"F4"进入小缓冲区编译项目
(global-set-key (kbd "<f5>") 'go-quick-run)    ;;按"F5"一键编译运行当前GO文件(GO语言)
(global-set-key (kbd "<C-f5>") 'go-quick-build)    ;;按"Ctrl+F5"一键编译生成当前GO文件(GO语言)
(global-set-key (kbd "<f6>") 'projectile-run-project)    ;;按"F6"进入小缓冲区运行项目
(global-set-key (kbd "<f7>") 'ivy-wgrep-change-to-wgrep-mode)    ;;按"F7"进入Wgrep模式跨文件替换
(global-set-key (kbd "<f8>") 'rust-compile-run)    ;;按"F8"一键编译并运行(Rust语言)
(global-set-key (kbd "<C-f8>") 'rust-compile-build)    ;;按"Ctrl+F8"一键编译生成可执行文件(预览)
(global-set-key (kbd "<C-S-f8>") 'rust-compile-build-release)    ;;按"Ctrl+Shifr+F8"一键编译生成可执行文件(发布)
(global-set-key (kbd "<f9>") 'nodejs-quick-run)    ;;按"F9"一键编译运行当前JS文件(JavaScript语言)
(global-set-key (kbd "<f10>") 'symbol-overlay-put)    ;;添加或取消当前高亮相同词
(global-set-key (kbd "<C-f10>") 'symbol-overlay-remove-all)    ;;关闭所有高亮相同词
(global-set-key (kbd "<f12>") 'my-vterm-mode)    ;;按"F12"一键开启虚拟终端
(define-key copilot-completion-map (kbd "<tab>") 'copilot-accept-completion)    ;;人工智能Copilot键绑定
(define-key global-map (kbd "<S-down-mouse-1>") 'ignore)    ;;去除原来的键绑定
(define-key global-map (kbd "<S-mouse-1>") 'mouse-save-then-kill)    ;;绑定"Shift"+鼠标左键=点选区域
(global-unset-key (kbd "M-<down-mouse-1>"))    ;;去除原来的键绑定
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)    ;;绑定"Alt"+鼠标左键=添加多光标

;;####=更改GDB多窗口布局=###########################################################################################
(defadvice gdb-setup-windows (after setup-gdb-windows activate)
  (gdb-get-buffer-create 'gdb-locals-buffer)
  (gdb-get-buffer-create 'gdb-stack-buffer)
  (gdb-get-buffer-create 'gdb-breakpoints-buffer)
  (set-window-dedicated-p (selected-window) nil)
  (switch-to-buffer gud-comint-buffer)
  (delete-other-windows)
  (let ((win0 (selected-window))
        (win1 (split-window nil nil 'left))
        (win2 (split-window nil ( / ( * (window-height) 3) 4)))
        (win3 (split-window nil ( / ( * (window-height) 1) 2))))
    (select-window win2)
    (gdb-set-window-buffer (gdb-breakpoints-buffer-name))
    (select-window win3)
    (gdb-set-window-buffer (gdb-get-buffer-create 'gdb-inferior-io))
    (let ((win4 (split-window-right)))
      (gdb-set-window-buffer (gdb-locals-buffer-name) nil win4))
    (select-window win1)
    (set-window-buffer
     win1
     (if gud-last-last-frame
         (gud-find-file (car gud-last-last-frame))
       (if gdb-main-file
           (gud-find-file gdb-main-file)
         (list-buffers-noselect))))
    (setq gdb-source-window (selected-window))
    (let ((win5 (split-window nil ( / (* (window-height) 3) 4))))
      (gdb-set-window-buffer (gdb-stack-buffer-name) nil win5))
    (select-window win0)))

;;####=默认窗口大小=################################################################################################
(set-frame-size (selected-frame) 140 45)    ;;窗口默认大小
;;####=配置文件结束=################################################################################################