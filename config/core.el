;;=============================;;
;;        progrma set          ;;
;;=============================;;



;;load perosonal emacs set
(load-dotfile "config/bindings.el")


;; haml mode
(autoload 'haml-mode "haml-mode.el" "Major mode for editing Haml files" t)
(setq auto-mode-alist (cons '("\\.haml" . haml-mode) auto-mode-alist))
(add-hook 'haml-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
                        (define-key haml-mode-map "\C-m" 'newline-and-indent)))



;; slim mode
(add-to-list 'load-path "~/.emacs.d/lib")
(require 'slim-mode)

;; sass mode
(add-to-list 'load-path "~/.emacs.d/lib")
(require 'sass-mode)

;; less mode
(add-to-list 'load-path "~/.emacs.d/lib")
(require 'less-css-mode)

;; cucumber mode
(add-to-list 'load-path "~/.emacs.d/lib/feature-mode")
(setq feature-default-i18n-file "path/to/gherkin/gem/i18n.yml")
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))



;; rspec mode
(add-to-list 'load-path "~/.emacs.d/lib/rspec-mode")
(require 'rspec-mode)



;; ruby mode
(add-to-list 'load-path "~/.emacs.d/lib/ruby-emacs")
(autoload 'ruby-mode "ruby-mode"
  "Mode for ruby")
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rxml$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . ruby-mode))
(autoload 'run-ruby "inf-ruby"
  "Ruby an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby i ruby-mode")
(add-hook 'ruby-mode-hook
          '(lambda ()
             (inf-ruby-keys)))
(add-hook 'ruby-mode-hook 'turn-on-font-lock)


;; scss, a css template
(add-to-list 'load-path "~/.emacs.d/lib/scss-mode")
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))


;; coffeescript-mode
(add-to-list 'load-path "~/.emacs.d/lib/coffee-mode")
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
(require 'coffee-mode)


;; markdown mode
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.markdown" . markdown-mode) auto-mode-alist))



;; yasnippet
(add-to-list 'load-path "~/.emacs.d/lib/yasnippet/yasnippet.el")
(require 'yasnippet)
(setq yas/root-directory "~/.emacs.d/lib/yasnippet/snippets")
(yas/load-directory yas/root-directory)



;; auto-complete
(add-to-list 'load-path "~/.emacs.d/lib/auto-complete")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/lib/ac-dict")
(require 'auto-complete-config)
(ac-config-default)

;; yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist
             '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

;; rinari, a package to develop rails
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/lib/rinari")
(require 'rinari)
(setq rinari-tags-file-name "TAGS")

;; rails package
;; (setq load-path (cons (expand-file-name "~/.emacs.d/lib/emacs-rails-reloaded") load-path))
;; (require 'rails-autoload)

;; 80 columns
(setq default-fill-column 80)

(setq whitespace-line-count 80
      whitespace-style '(lines))

(setq whitespace-style '(trailing space-before-tab
                                  indentation space-after-tab))

;; autopair to close quote auto
(add-to-list 'load-path "~/.emacs.d/lib/autopair") ;; comment if autopair.el is in standard load path
(require 'autopair)
(autopair-global-mode)
