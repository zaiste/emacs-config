;;
;; Emacs initialisation starting point
;;
(add-to-list 'load-path "~/.emacs.d")

;; To be able to use an org-babel based configuration, org-mode, or at
;; least a part of it must be loaded. I use the trunk version, so I
;; will need to make this happen first
(add-to-list 'load-path "~/dev/emacs/packages/org-mode/lisp/")

;; Load in the main org file which starts up configuration This will
;; lead to an mrb.el file automatically, so that can't exist in the
;; current directory for this to work. 
(org-babel-load-file "~/.emacs.d/mrb.org")

;; END init.el
;; This is all there should be in this file, the rest is handled in org-mode.


;; Make sure erase works properly
;; (not sure I completely understand the rationale behind this)
(if window-system  (normal-erase-is-backspace-mode t))

;; Tramp
(setq tramp-default-method "ssh")

;; Default browswer 
(setq browse-url-browser-function (quote browse-url-generic))
(setq browse-url-generic-program "chromium-browser")

;; Interactively do things
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching
(ido-everywhere)

;; erc
;; Probably move this to a file of its own once it gets longer
;; TODO: prevent the continuous asking for username
(require 'erc-services)
(and
     (require 'erc-highlight-nicknames)
     (add-to-list 'erc-modules 'highlight-nicknames)
     (erc-update-modules))
(setq
  erc-prompt-for-nickserv-password nil
  erc-hide-list '("JOIN" "PART" "QUIT")
  erc-nick '("Marcel|HSD" "Marcel||HSD")
  erc-nickserv-passwords '((freenode (("Marcel|HSD" . "PASSWORDHERE"))))
)



;; Enable highlight parentheses for all buffers
;; FIXME: this needs one more color than actually used. The last one does not get highlighted!
(setq hl-paren-colors (quote ("firebrick" "lightgreen" "orange" "cyan" "yellow" "blue")))

(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;;; Expand region global key, move to bindings later
;;; packge should have been loaded by elpa
(require 'expand-region)

;; Do smart tabbing, this does mostly the right thing everywhere
(require 'smart-tab)
;; Make sure it does the right thing in some modes, notably erc
(setq smart-tab-completion-functions-alist
      (quote (
	      (emacs-lisp-mode . lisp-complete-symbol)
	      (text-mode . dabbrev-completion)
	      (erc-mode . pcomplete)))
      smart-tab-disabled-major-modes
      (quote (org-mode org-agenda-mode term-mode)))

;; Enable everywhere
(global-smart-tab-mode 1)

;; Multiple cursors sounds interesting
(require 'multiple-cursors)

;; I want to manage my own templates
(require 'xlicense)
(setq license-directory "~/.emacs.d/licenses")
(add-to-list 'license-types '(agpl . "AGPL"))

;; Wrap region mode to simplify quoting etc.
;; For now, enable globally, use exceptions when we find problems
(add-to-list 'load-path "~/dev/emacs/packages/wrap-region")

;; Wrap region allows to delimit a region with quotes, comment chars
;; or whatever is configured.
(require 'wrap-region)
(wrap-region-global-mode 1)
;; (add-to-list 'wrap-region-except-modes 'conflicting-mode)

