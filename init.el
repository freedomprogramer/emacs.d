;; This is where everything starts


;; Create a variable to store the path to this dotfile directory
;; (Usually ~/.emacs.d)
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

;; Create variables to store the path to this dotfile dir's lib etc and tmp directories
(setq dotfiles-lib-dir (concat dotfiles-dir "lib/"))
(setq dotfiles-tmp-dir (concat dotfiles-dir "tmp/"))
(setq dotfiles-etc-dir (concat dotfiles-dir "etc/"))

;; Create helper fns for loading dotfile paths and files
(defun add-dotfile-path (p)
  (add-to-list 'load-path (concat dotfiles-dir p)))

(defun add-lib-path (p)
  (add-to-list 'load-path (concat dotfiles-lib-dir p)))

(defun load-dotfile (f)
  (load-file (concat dotfiles-dir f)))


;; Ensure the lib directory is on the load path
(add-dotfile-path "lib")


;; Pull in live-coding config (see https://github.com/overtone/live-coding-emacs)
(load-dotfile "live-config/live.el")


;; Pull in personalised config
(load-dotfile "config/core.el")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(custom-safe-themes (quote ("978bd4603630ecb1f01793af60beb52cb44734fc14b95c62e7b1a05f89b6c811" "dc46381844ec8fcf9607a319aa6b442244d8c7a734a2625dac6a1f63e34bc4a6" "6f3060ac8300275c990116794e1ba897b6a8af97c51a0cb226a98759752cddcf" "d293542c9d4be8a9e9ec8afd6938c7304ac3d0d39110344908706614ed5861c9" "8874901e0011a7b07e546b65be1726c4cc3f35cf1a60f8805e6cb5bb59ba305c" "3341f6db5ac17e4174f7488c40676e7f0464f1e88519a59303dc7e7774245bbf" default)))
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/jack-lee/pro/rails/railstutorial/weibo_app")))
 '(font-use-system-font t)
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal))))
 '(ediff-even-diff-A ((((class color) (background dark)) (:background "dark green"))) t)
 '(ediff-even-diff-B ((((class color) (background dark)) (:background "dark red"))) t)
 '(ediff-odd-diff-A ((((class color) (background dark)) (:background "dark green"))) t)
 '(ediff-odd-diff-B ((((class color) (background dark)) (:background "dark red"))) t)
 '(mumamo-background-chunk-major ((((class color) (background dark)) (:background "black"))) t)
 '(mumamo-background-chunk-submode1 ((((class color) (background dark)) (:background "black"))) t))
