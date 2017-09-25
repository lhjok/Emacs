;; 更改窗口大小:（下面三行代码添加到：~/.Xresources）
;; Emacs.FontBackend: xft
;; Emacs.geometry: 155x50+330+200
;; $ xrdb .Xresources
;;####=优先启动设置:=############################################################################################
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
(set-default-font "Consolas-12")    ;;设置英文字体
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
(when (not (package-installed-p 'undo-tree))
  (package-install 'undo-tree))    ;;自动安装撤销插件包
(when (not (package-installed-p 'go-mode))
  (package-install 'go-mode))    ;;自动安装GO语言插件包
(when (not (package-installed-p 'rust-mode))
  (package-install 'rust-mode))    ;;自动安装Rust语言插件包
(when (not (package-installed-p 'ycmd))
  (package-install 'ycmd))    ;;自动安装ycmd补全后端插件包
(when (not (package-installed-p 'racer))
  (package-install 'racer))    ;;自动安装Rust-Racer补全插件包
(when (not (package-installed-p 'flycheck))
  (package-install 'flycheck))    ;;自动安装flycheck语法检查插件包
(when (not (package-installed-p 'flycheck-rust))
  (package-install 'flycheck-rust))    ;;自动安装flycheck-rust语法检查插件包
(when (not (package-installed-p 'flycheck-ycmd))
  (package-install 'flycheck-ycmd))    ;;自动安装flycheck-ycmd语法检查补全后端插件包
(when (not (package-installed-p 'company))
  (package-install 'company))    ;;自动安装company自动补全插件包
(when (not (package-installed-p 'company-racer))
  (package-install 'company-racer))    ;;自动安装company-racer自动补全插件包
(when (not (package-installed-p 'company-ycmd))
  (package-install 'company-ycmd))    ;;自动安装company-ycmd自动补全后端插件包
(when (not (package-installed-p 'highlight-symbol))
  (package-install 'highlight-symbol))    ;;自动安装highlight-symbol自动高亮相同词插件包

;;####=默认加载插件设置:=########################################################################################
(require 'undo-tree)    ;;打开反撤销功能
(require 'rust-mode)    ;;打开Rust语言编辑模式
(require 'ycmd)    ;;打开Ycmd自动补全后端
(require 'racer)    ;;打开Racer补全模式
(require 'go-mode)    ;;打开GO语言编辑模式
(require 'flycheck)    ;;打开语法检查插件包
(require 'flycheck-rust)    ;;打开Rust语言语法检查插件包
(require 'flycheck-ycmd)    ;;打开Ycmd语法检查补全后端
(require 'company)    ;;打开自动补全插件包
(require 'company-racer)    ;;打开Rust语言自动补全插件包
(require 'company-ycmd)    ;;打开Ycmd自动补全后端
(require 'highlight-symbol)    ;;打开自动高亮相同词插件包

;;####=插件功能设置:=############################################################################################
(global-undo-tree-mode)    ;;开启反撤销功能
(add-hook 'after-init-hook #'global-ycmd-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'prog-mode-hook 'highlight-symbol-mode)
(company-ycmd-setup)
(flycheck-ycmd-setup)
(set-variable 'ycmd-server-command '("python" "/home/lhjok/.ycmd/ycmd"))
(set-variable 'ycmd-global-config "/home/lhjok/.ycmd/examples/.ycm_extra_conf.py")
(when (not (display-graphic-p))
  (setq flycheck-indication-mode nil))
(setq highlight-symbol-idle-delay 0.1)
(setq company-tooltip-limit 20)
(setq company-idle-delay 0.2)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
(add-hook 'go-mode-hook (lambda ()
    (set (make-local-variable 'company-backends) '(company-ycmd))
    (company-mode)))
(setq gofmt-command "goreturns")
(add-hook 'before-save-hook 'gofmt-before-save)
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))    ;;默认RS文件进入编辑模式
(setq racer-cmd "~/.cargo/bin/racer")    ;;Racer配置路径
;;(setq racer-rust-src-path "/home/src")    ;;Rust库配置路径(原路径太长，复制一份到Home目录下)
(unless (getenv "RUST_SRC_PATH")
  (setenv "RUST_SRC_PATH"
    (expand-file-name "/home/src")))
(global-company-mode)
(add-hook 'rust-mode-hook '(lambda () (racer-activate)
    (racer-turn-on-eldoc)
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
    (set (make-local-variable 'company-backends) '(company-racer))
    (local-set-key (kbd "M-.") #'racer-find-definition)))    ;;跳转到定义
(custom-set-variables
 '(company-backends
   (quote
    (company-keywords company-ycmd company-bbdb company-nxml company-css
     company-eclim company-semantic company-clang company-xcode company-cmake company-capf company-files
     (company-dabbrev-code company-gtags company-etags company-keywords) company-oddmuse company-dabbrev))))
(custom-set-faces)
(defun ycmd-setup-completion-at-point-function ()
  "Setup `completion-at-point-functions' for `ycmd-mode'."
  (add-hook 'completion-at-point-functions
            #'ycmd-complete-at-point nil :local))
(add-hook 'ycmd-mode #'ycmd-setup-completion-at-point-function)

;;####=自定义主题设置=###########################################################################################
(deftheme jazz "The Jazz Color Theme")
(let ((class '((class color) (min-colors 89)))
     (jazz-bg "#f5f5f5")(jazz-fg "#232323")(jazz-com "#b15353")(jazz-red "#ff0000")
     (jazz-fg-1 "#555555")(jazz-reg "#d4d4d4")(jazz-fun "#0018b3")(jazz-bg-1 "#d4d4d4"))
  (custom-theme-set-faces 'jazz
   `(default ((,class (:foreground ,jazz-fg :background ,jazz-bg))))    ;;默认字体颜色和全局背景颜色
   `(cursor ((,class (:foreground ,jazz-fg :background ,jazz-fg))))    ;;光标颜色
   `(region ((,class (:background ,jazz-reg :foreground nil))))    ;;选取块背景颜色
   `(font-lock-comment-face ((,class (:foreground ,jazz-com))))    ;;注释字体颜色
   `(font-lock-comment-delimiter-face ((,class (:foreground ,jazz-com))))    ;;注释字体颜色
   `(font-lock-function-name-face ((,class (:foreground ,jazz-fun))))    ;;函数名字体颜色
   `(highlight ((,class (:background ,jazz-bg-1))))    ;;高亮当前行背景颜色
   `(header-line ((,class (:foreground ,jazz-fg
                           :background ,jazz-bg-1
                           :box (:line-width -1 :color ,jazz-bg-1)))))
   `(linum ((,class (:foreground ,jazz-fg :background ,jazz-bg))))
   `(default ((,class (:foreground ,jazz-fg :background ,jazz-bg))))
   `(fringe ((,class (:foreground ,jazz-fg :background ,jazz-bg-1))))
   `(mode-line
     ((,class (:foreground ,jazz-fg
               :background ,jazz-bg-1
               :box (:line-width 3 :color ,jazz-bg-1)))))
   `(mode-line-buffer-id ((,class (:foreground ,jazz-fg :weight bold))))
   `(mode-line-highlight ((,class (:foreground ,jazz-fg-1))))
   `(mode-line-inactive
     ((,class (:inherit mode-line :foreground ,jazz-fg
               :background ,jazz-bg-1
               :box (:line-width 3 :color ,jazz-bg-1)))))
   `(mode-line-folder-face ((,class (:foreground ,jazz-fg))))
   `(mode-line-modified-face ((,class (:foreground ,jazz-fg))))
   `(mode-line-ro-modified-face ((,class (:foreground ,jazz-fg))))
   `(mode-line-buffer-name ((,class (:foreground ,jazz-fg))))
   `(mode-line-mode-name ((,class (:foreground ,jazz-fg))))
   `(mode-line-mode-string ((,class (:foreground ,jazz-fg))))
   `(mode-line-vc-mode ((,class (:foreground ,jazz-fg))))
   `(mode-line-minor-mode-face ((,class (:foreground ,jazz-fg :height 96))))
   '(company-preview ((t (:foreground "darkgray" :underline t))))
   '(company-preview-common ((t (:inherit company-preview))))
   '(company-scrollbar-bg ((t (:background "#d0d0d0"))))
   '(company-scrollbar-fg ((t (:background "#c2c2c2"))))
   '(company-tooltip ((t (:background "#dedede" :foreground "#232323"))))
   '(company-tooltip-common ((((type x))
    (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
   '(company-tooltip-common-selection ((((type x))
    (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
   `(company-tooltip-mouse ((t (:background "#d0d0d0"))))
   '(company-tooltip-annotation ((t (:foreground "#636363"))))
   '(company-tooltip-selection ((t (:background "#d0d0d0" :foreground "#232323"))))   
   `(show-paren-mismatch ((,class (:foreground ,jazz-red :background nil :weight bold))))    ;;高亮括号匹配颜色
   `(show-paren-match ((,class (:foreground ,jazz-red :background nil :weight bold))))))    ;;高亮括号匹配颜色
(provide-theme 'jazz)

;;####=编译窗口设置:=############################################################################################
(defun my-compilation-mode-hook ()
  (interactive)
  (read-only-mode -1)    ;;更改只读模式为可输入
  (comint-mode))    ;;切换交互模式
(add-hook 'compilation-mode-hook 'my-compilation-mode-hook)
(setq special-display-buffer-names '("*compilation*"))    ;;分割编译窗口
(setq special-display-function
  (lambda (buffer &optional args)
  (split-window nil (floor (* 1.2 (window-body-height))) 'left)    ;;设置编译窗口大小
  (switch-to-buffer buffer)    ;;切换到编译窗口
  (get-buffer-window buffer 0)))
(defun my-ansi-term ()    ;;真实终端设置
  (interactive)
  (progn
    (if (not (get-buffer-window "*ansi-term*"))
        (progn
          (split-window-vertically)
          (other-window 1)
          (shrink-window (- (window-height (get-buffer-window "*ansi-term*")) 15))
          (ansi-term "/bin/bash")
          (switch-to-buffer "*ansi-term*")))))
(global-set-key (kbd "<f12>") 'my-ansi-term)    ;;按"F12"一键开启真实终端

;;####=快捷键绑定:=##############################################################################################
(global-set-key (kbd "C-z") 'undo)    ;;撤销
(global-set-key (kbd "C-S-z") 'redo)    ;;反撤销
(global-set-key (kbd "C-y") 'redo)    ;;反撤销
(global-set-key (kbd "C-a") 'mark-whole-buffer)    ;;全选
(global-set-key (kbd "C-v") 'yank)    ;;粘贴
(global-set-key (kbd "C-n") 'find-file)    ;;打开或新建文件
(global-set-key (kbd "C-p") 'insert-file)    ;;插入文件
(global-set-key (kbd "C-o") 'find-file-read-only)    ;;以只读模式打开
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
(defun go-quick-run()
  (interactive)
  (compile (concat "go run " (buffer-name (current-buffer)))))
(global-set-key (kbd "<f5>") 'go-quick-run)    ;;按"F5"一键编译运行当前GO文件(GO语言)
(defun go-quick-build()
  (interactive)
  (compile (concat "go build " (buffer-name (current-buffer)))))
(global-set-key (kbd "<C-f5>") 'go-quick-build)    ;;按"Ctrl+F5"一键编译生成当前GO文件(GO语言)
(defun rust-compile-run ()
  (interactive)
  (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
      (compile "cargo run")
    (compile (concat "rustc " (buffer-file-name)))))
(global-set-key (kbd "<f8>") 'rust-compile-run)    ;;按"F8"一键编译并运行(Rust语言)
(defun rust-compile-build ()
  (interactive)
  (if (locate-dominating-file (buffer-file-name) "Cargo.toml")
      (compile "cargo build")
    (compile (concat "rustc " (buffer-file-name)))))
(global-set-key (kbd "<C-f8>") 'rust-compile-build)    ;;按"Ctrl+F8"一键编译生成EXE文件(Rust语言)
(defun cpp-quick-compile()
  (interactive)
  (compile (concat "g++ -Wall -o " (file-name-sans-extension (buffer-name))
                   " " (buffer-name (current-buffer)))))
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