;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;        set emacs            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;; personal color theme ;;;;;;;;;;;;;;;;
;;将下载的颜色加入到color-theme的文件夹下面就可以换色

;; dark
;; (load-file (concat dotfiles-lib-dir "blackbored.el"))
;; (color-theme-blackbored)

;; (require 'color-theme)
;; (color-theme-initialize)
;; (color-theme-jonadabian)


;; white
;; (require 'sanityinc-tomorrow-day-theme)

;; dark blue
;; (require 'sanityinc-tomorrow-blue-theme)

;; bright dark
;; (require 'sanityinc-tomorrow-bright-theme)

;; gray
;; (require 'sanityinc-tomorrow-night-theme)

;; light blue
;; (require 'solarized-dark-theme)

;; light red
;; (require 'solarized-light-theme)

;; gray
;; (require 'Amelie-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/emacs-color-themes/themes")
(load-theme 'hickey t)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; display line number on the left
;; (global-linum-mode t)

;; set default workspace
(setq default-directory "/home/jack-lee")


;;设置tab为2个空格的宽度
(setq default-tab-width 2)

;; 实现全屏效果，快捷键为f11
(global-set-key [f11] 'my-fullscreen)
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)


;; 透明效果设置
(global-set-key [(f8)] 'loop-alpha)  ;;注意这行中的F8 , 可以改成你想要的按键

;; (setq alpha-list '((85 55) (100 100)))

;; nav file brower
(add-to-list 'load-path "~/.emacs.d/lib/nav")
(require 'nav)
(nav-disable-overeager-window-splitting)


























