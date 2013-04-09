(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/dev/emacs/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/dev/emacs/auto-complete/dict")
(ac-config-default)

(require 'evil)
(evil-mode 1)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.escript?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app.src?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.config?$" . erlang-mode))

(add-to-list 'auto-mode-alist '("\\.md?$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown?$" . markdown-mode))

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake?$" . ruby-mode))

(setq load-path (cons "/usr/local/otp/lib/erlang/lib/tools-2.6.10/emacs" load-path))
(setq erlang-root-dir "/usr/local/otp")
(setq exec-path (cons "/usr/local/otp/bin" exec-path))


(require 'erlang-start)
(require 'erlang-flymake)
(require 'highlight-parentheses)

(add-to-list 'ac-modes 'erlang-mode)

(define-globalized-minor-mode global-highlight-parentheses-mode highlight-parentheses-mode
    (lambda nil (highlight-parentheses-mode t)))

(global-highlight-parentheses-mode t)

(load-theme 'zenburn 1)

