;;####=优先启动设置:=############################################################################################
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
(setq auto-save-default nil)    ;;关闭备份文件
(setq mouse-drag-copy-region nil)    ;;禁止采用鼠标选取后就进入剪切板
(set-default 'truncate-lines t)    ;;关闭自动换行功能
(setq pop-up-windows nil)    ;;禁止自动弹出窗口
(global-hl-line-mode 0)    ;;关闭高亮光标所在行
(cua-mode t)    ;;打开（C-x剪切）/（C-c拷贝）/（C-v粘贴）功能键
(show-paren-mode t)    ;;打开括号匹配显示模式
(desktop-save-mode 1)    ;;默认打开上一次编辑的文件
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
(global-linum-mode 0)    ;;不显示行号
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

;;####=文档编码设置:=############################################################################################
(setq current-language-environment "UTF-8")    ;;设置中文环境
(setq locale-coding-system 'utf-8)    ;;设置中文环境
(prefer-coding-system 'utf-8)    ;;优先读取指定文件编码
(setq default-buffer-file-coding-system 'utf-8)    ;;缓冲区编码
(setq default-process-coding-system 'utf-8)    ;;进程输出输入编码
(setq file-name-coding-system 'utf-8)    ;;文件名编码
(set-selection-coding-system 'utf-8)    ;;选择块编码
(set-terminal-coding-system 'utf-8)    ;;终端编码
(set-keyboard-coding-system 'utf-8)    ;;键盘输入编码
(set-frame-font "Consolas-13" nil t)    ;;设置英文字体
(set-fontset-font (frame-parameter nil 'font)    ;;设置中文字体
                  'han '("Source Code Pro" . "unicode-bmp"))

;;####=插件包管理源设置:=########################################################################################
(require 'package)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")    ;;官方GNU源
        ("marmalade" . "https://marmalade-repo.org/packages/")    ;;第三方Marmalade源
        ("melpa" . "https://melpa.org/packages/")))    ;;第三方Melpa源
(package-initialize)

;;####=自动安装插件包:=##########################################################################################
(when (not package-archive-contents)
  (package-refresh-contents))    ;;自动初始化源安装列表
(when (not (package-installed-p 'use-package))
  (package-install 'use-package))    ;;自动安装包管理模块
(when (not (package-installed-p 'undo-tree))
  (package-install 'undo-tree))    ;;自动安装撤销插件包
(when (not (package-installed-p 'go-mode))
  (package-install 'go-mode))    ;;自动安装GO语言插件包
(when (not (package-installed-p 'rustic))
  (package-install 'rustic))    ;;自动安装Rust语言插件包
(when (not (package-installed-p 'js2-mode))
  (package-install 'js2-mode))    ;;自动安装JavaScript语言插件包
(when (not (package-installed-p 'toml-mode))
  (package-install 'toml-mode))    ;;自动安装toml插件包
(when (not (package-installed-p 'lsp-mode))
  (package-install 'lsp-mode))    ;;自动安装lsp插件包
(when (not (package-installed-p 'ycmd))
  (package-install 'ycmd))    ;;自动安装ycmd补全后端插件包
(when (not (package-installed-p 'flycheck))
  (package-install 'flycheck))    ;;自动安装flycheck语法检查插件包
(when (not (package-installed-p 'flycheck-ycmd))
  (package-install 'flycheck-ycmd))    ;;自动安装flycheck-ycmd语法检查补全后端插件包
(when (not (package-installed-p 'company))
  (package-install 'company))    ;;自动安装company自动补全插件包
(when (not (package-installed-p 'company-ycmd))
  (package-install 'company-ycmd))    ;;自动安装company-ycmd自动补全后端插件包
(when (not (package-installed-p 'highlight-symbol))
  (package-install 'highlight-symbol))    ;;自动安装highlight-symbol自动高亮相同词插件包
(when (not (package-installed-p 'all-the-icons))
  (package-install 'all-the-icons))    ;;自动安装all-the-icons图标主题插件包
(when (not (package-installed-p 'doom-themes))
  (package-install 'doom-themes))    ;;自动安装doom-themes主题插件包
(when (not (package-installed-p 'treemacs))
  (package-install 'treemacs))    ;;自动安装treemacs文件浏览器

;;####=默认加载插件设置:=########################################################################################
(require 'use-package)    ;;打开包管理模块
(require 'undo-tree)    ;;打开反撤销功能
(require 'rustic)    ;;打开Rust语言编辑模式
(require 'js2-mode)    ;;打开JavaScript语言编辑模式
(require 'toml-mode)    ;;打开toml编辑模式
(require 'lsp-mode)    ;;打开lsp自动补全后端
(require 'ycmd)    ;;打开Ycmd自动补全后端
(require 'go-mode)    ;;打开GO语言编辑模式
(require 'flycheck)    ;;打开语法检查插件包
(require 'flycheck-ycmd)    ;;打开Ycmd语法检查补全后端
(require 'company)    ;;打开自动补全插件包
(require 'company-ycmd)    ;;打开Ycmd自动补全后端
(require 'highlight-symbol)    ;;打开自动高亮相同词插件包
(require 'all-the-icons)    ;;打开all-the-icons图标主题插件包
(require 'doom-themes)    ;;打开doom-themes主题插件包
(require 'treemacs)    ;;打开treemacs文件浏览器

;;####=插件功能设置:=############################################################################################
(global-undo-tree-mode)    ;;开启反撤销功能
(use-package rustic)    ;;开启Rust语言编辑模式
(use-package all-the-icons)    ;;开启all-the-icons图标主题
(use-package doom-themes    ;;开启doom-themes主题
  :ensure t :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-one-light t)
  (doom-themes-visual-bell-config)
  (setq doom-themes-treemacs-theme "doom-atom")
  (doom-themes-treemacs-config)
  (doom-themes-org-config))
(use-package treemacs)    ;;开启treemacs文件浏览器
(setq lsp-rust-server 'rust-analyzer)    ;;开启rust-analyzer补全模式
(add-hook 'after-init-hook #'global-ycmd-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(company-ycmd-setup)
(flycheck-ycmd-setup)
(set-variable 'ycmd-server-command '("python" "/var/home/lhjok/.ycmd/third_party/ycmd/ycmd"))
(set-variable 'ycmd-global-config "/var/home/lhjok/.ycmd/third_party/ycmd/examples/.ycm_extra_conf.py")
(when (not (display-graphic-p))
  (setq flycheck-indication-mode nil))
(setq highlight-symbol-idle-delay 0.1)
(setq company-tooltip-limit 20)
(setq company-idle-delay 0.2)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
(add-hook 'go-mode-hook (lambda ()
   (set (make-local-variable 'company-backends) '(company-ycmd))
   (company-mode)
   (local-set-key (kbd "M-.") #'godef-jump-other-window)))    ;;跳转到定义
(setq gofmt-command "goreturns")
(add-hook 'before-save-hook 'gofmt-before-save)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))    ;;默认JS文件进入编辑模式
(add-to-list 'auto-mode-alist '("\\.toml$" . toml-mode))    ;;默认Toml文件进入编辑模式
(defun ycmd-setup-completion-at-point-function ()
  "Setup `completion-at-point-functions' for `ycmd-mode'."
  (add-hook 'completion-at-point-functions
            #'ycmd-complete-at-point nil :local))
(add-hook 'ycmd-mode #'ycmd-setup-completion-at-point-function)
(with-eval-after-load 'treemacs
  (define-key treemacs-mode-map [mouse-1] #'treemacs-single-click-expand-action))
(set-frame-position (selected-frame) 320 70)    ;;窗口位置
(set-frame-width (selected-frame) 140)    ;;窗口宽度
(set-frame-height (selected-frame) 50)    ;;窗口高度

;;####=编译窗口设置:=############################################################################################
(defun my-compilation-mode-hook ()
  (interactive)
  (read-only-mode -1)    ;;更改只读模式为可输入
  (comint-mode))    ;;切换交互模式
(add-hook 'compilation-mode-hook 'my-compilation-mode-hook)
(setq special-display-buffer-names '("*compilation*"))    ;;分割编译窗口
(setq special-display-function
      (lambda (buffer &optional args)
        (split-window-horizontally ( / ( * (window-width) 2) 3))    ;;设置编译窗口大小
        (other-window 1)
        (switch-to-buffer buffer)    ;;切换到编译窗口
        (get-buffer-window buffer 0)))
(defun my-ansi-term ()    ;;真实终端设置
  (interactive)
  (progn
    (if (not (get-buffer-window "*ansi-term*"))
        (progn
          (split-window-vertically ( - (window-height (get-buffer-window "*ansi-term*")) 15))
          (other-window 1)
          (ansi-term "/bin/bash")
          (switch-to-buffer "*ansi-term*")))))
(global-set-key (kbd "<f11>") 'my-ansi-term)    ;;按"F11"一键开启真实终端

;;####=快捷键绑定:=##############################################################################################
(global-set-key (kbd "C-z") 'undo)    ;;撤销
(global-set-key (kbd "C-S-z") 'redo)    ;;反撤销
(global-set-key (kbd "C-y") 'redo)    ;;反撤销
(global-set-key (kbd "C-a") 'mark-whole-buffer)    ;;全选
(global-set-key (kbd "C-v") 'yank)    ;;粘贴
(global-set-key (kbd "C-n") 'find-file)    ;;打开或新建文件
(global-set-key (kbd "C-p") 'insert-file)    ;;插入文件
(global-set-key (kbd "C-`") 'treemacs)    ;;显示和隐藏treemacs文件浏览器
(global-set-key (kbd "C-o") 'treemacs-select-window)    ;;打开treemacs文件浏览器
(global-set-key (kbd "C-S-o") 'treemacs-add-project-to-workspace)    ;;添加项目到工作区
(global-set-key (kbd "C-S-d") 'treemacs-remove-project-from-workspace)    ;;工作区删除项目
(global-set-key (kbd "C-s") 'save-buffer)    ;;保存文件
(global-set-key (kbd "C-S-s") 'write-file)    ;;另存文件
(global-set-key (kbd "C-S-b") 'save-some-buffers)    ;;保存所有未保存的缓冲区
(global-set-key (kbd "C-f") 'isearch-forward)    ;;向后查找
(global-set-key (kbd "C-S-f") 'isearch-backward)    ;;向前查找
(global-set-key (kbd "C-r") 'replace-string)    ;;查找与替换
(global-set-key (kbd "C-S-k") 'kill-buffer)    ;;关闭当前缓冲区
(global-set-key (kbd "C-w") 'delete-window)    ;;关闭当前窗口
(global-set-key (kbd "C-S-w") 'delete-other-windows)    ;;关闭其他窗口,除当前窗口外
(global-set-key (kbd "C-l") 'split-window-vertically)    ;;分割横窗口
(global-set-key (kbd "C-t") 'split-window-horizontally)    ;;分割纵窗口
(global-set-key (kbd "<C-tab>") 'other-window)    ;;窗口切换
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
(global-set-key (kbd "M-/") 'hippie-expand)    ;;自带的自动补全
(global-set-key (kbd "C-{") 'start-kbd-macro)    ;;开始录制宏
(global-set-key (kbd "C-}") 'end-kbd-macro)    ;;结束宏录制
(global-set-key (kbd "C-.") 'highlight-symbol-next)    ;;下一个高亮相同词
(global-set-key (kbd "C-,") 'highlight-symbol-prev)    ;;上一个高亮相同词
(global-set-key (kbd "C-S-e") 'call-last-kbd-macro)    ;;执行上一次绑定的宏命令
(global-set-key (kbd "C-S-q") 'save-buffers-kill-emacs)    ;;退出程序
(define-key global-map (kbd "<S-down-mouse-1>") 'ignore)    ;;去除原来的键绑定
(define-key global-map (kbd "<S-mouse-1>") 'mouse-save-then-kill)    ;;绑定"Shift"+鼠标左键=点选区域

;;####=代码折叠功能:系统自带功能=#################################################################################
(load-library "hideshow")    ;;开启代码折叠功能
(add-hook 'c-mode-hook 'hs-minor-mode)    ;;C文件折叠功能
(add-hook 'c++-mode-hook 'hs-minor-mode)    ;;C++文件折叠功能
(add-hook 'go-mode-hook 'hs-minor-mode)    ;;GO文件折叠功能
(add-hook 'js2-mode-hook 'hs-minor-mode)    ;;JS文件折叠功能
(add-hook 'rust-mode-hook 'hs-minor-mode)    ;;Rust文件折叠功能
(add-hook 'python-mode-hook 'hs-minor-mode)    ;;Python文件折叠功能
(global-set-key (kbd "C--") 'hs-hide-block)    ;;折叠代码 (键绑定)
(global-set-key (kbd "C-=") 'hs-show-block)    ;;打开折叠 (键绑定)
(global-set-key (kbd "C-<") 'hs-hide-all)    ;;折叠全部代码 (键绑定)
(global-set-key (kbd "C->") 'hs-show-all)    ;;展开全部折叠 (键绑定)

;;####=快速编译环境=#############################################################################################
(global-set-key (kbd "<f4>") 'compile)    ;;按"F4"进入小缓冲区输入编译选项
(defun gdb-quick-run()
  (interactive)
  (gdb (gud-query-cmdline 'gdb))(tool-bar-mode 1))
(global-set-key (kbd "<f1>") 'gdb-quick-run)    ;;按"F1"一键进入GDB调试环境
(defun nodejs-quick-run()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "node " (buffer-name (current-buffer))))
    (end-of-buffer)))
(global-set-key (kbd "<f12>") 'nodejs-quick-run)    ;;按"F12"一键编译运行当前JS文件(JavaScript语言)
(defun go-quick-run()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "go run " (buffer-name (current-buffer))))
    (end-of-buffer)))
(global-set-key (kbd "<f5>") 'go-quick-run)    ;;按"F5"一键编译运行当前GO文件(GO语言)
(defun go-quick-build()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "go build " (buffer-name (current-buffer))))
    (end-of-buffer)))
(global-set-key (kbd "<C-f5>") 'go-quick-build)    ;;按"Ctrl+F5"一键编译生成当前GO文件(GO语言)
(defun rust-compile-run ()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "cargo run")
      (compile (concat "rustc " (buffer-file-name))))
    (end-of-buffer)))
(global-set-key (kbd "<f8>") 'rust-compile-run)    ;;按"F8"一键编译并运行(Rust语言)
(defun rust-compile-build ()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "cargo build")
      (compile (concat "rustc " (buffer-file-name))))
    (end-of-buffer)))
(global-set-key (kbd "<C-f8>") 'rust-compile-build)    ;;按"Ctrl+F8"一键编译生成可执行文件(预览)
(defun rust-compile-build-release ()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
        (compile "cargo build --release")
      (compile (concat "rustc " (buffer-file-name))))
    (end-of-buffer)))
(global-set-key (kbd "<C-S-f8>") 'rust-compile-build-release)    ;;按"Ctrl+Shifr+F8"一键编译生成可执行文件(发布)
(defun cpp-quick-compile()
  (interactive)
  (progn
    (if (get-buffer "*compilation*")
        (progn (delete-windows-on (get-buffer "*compilation*"))
               (kill-buffer "*compilation*")))
    (compile (concat "g++ -Wall -o " (file-name-sans-extension (buffer-name))
                     " " (buffer-name (current-buffer))))))
(global-set-key (kbd "<f9>") 'cpp-quick-compile)    ;;按"F9"一键编译生成C++文件(C++语言)

;;####=更改GDB多窗口布局=########################################################################################
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

;;####=配置文件结束=#############################################################################################