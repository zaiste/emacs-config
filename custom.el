(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-sources (quote ((:source "~/.authinfo" :host t :protocol t))))
 '(column-number-mode t)
 '(command-frequency-autosave-mode t)
 '(compilation-scroll-output t)
 '(custom-safe-themes (quote ("f23144cd3b2cfd4d873f16bef36a246d55616658aff372ec87d96cd1330ebafd" "bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" "702ed17ae44a6f3cb71ed2e5bf5edeec06a771c80eb61b265ebf8a658edd2462" "b2382ac6b8a922aee932d81ef846e83ab4c950198986849c622e60996b698c71" "ebb23762f3569b2d146b6091a6ed22cac44c4e53e8a33d9ff2bc3b90cc9e58e8" "819d81fabb0bde707a0f34cdd66e3bc1960273e8283e912a310e446ce3c44620" "363772e75d98d439856d08c013ae280ca55958db6ed073c43081ddba4404bef8" default)))
 '(custom-theme-load-path (quote ("/home/mrb/.emacs.d/el-get/" "/home/mrb/.emacs.d/el-get/zenburn-emacs/" custom-theme-directory t)))
 '(explicit-shell-file-name "/bin/bash")
 '(fci-rule-color "#383838")
 '(flyspell-issue-message-flag nil)
 '(gnus-select-method (quote (nnimap "mail")))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(ispell-use-framepop-p t)
 '(jabber-alert-message-hooks (quote (jabber-message-libnotify jabber-message-awesome jabber-message-wave jabber-message-echo jabber-message-scroll)))
 '(jabber-roster-show-title nil)
 '(jabber-socks5-proxies (quote ("proxy.hsdev.com")))
 '(jabber-vcard-avatars-retrieve nil)
 '(mail-signature nil)
 '(markdown-css-path "/home/mrb/.markdown.css")
 '(mu4e-attachment-dir "/home/mrb/Downloads")
 '(nxml-heading-element-name-regexp "\\|.*")
 '(nxml-section-element-name-regexp "\\|file\\|.+")
 '(org-agenda-custom-commands (quote (("w" "Waiting For list" tags-todo "-inactive/WAITING" ((org-agenda-overriding-header "WAITING FOR-list") (org-agenda-dim-blocked-tasks t) (org-agenda-group-by-property "Responsible"))) ("b" "Buying list" tags-todo "-inactive+buy/BUY|TODO" ((org-agenda-overriding-header "Buying list") (org-agenda-dim-blocked-tasks t) (org-agenda-group-by-property "BLOCKED") (org-agenda-sorting-strategy (quote (todo-state-up))))) ("p" "Active project list" tags-todo "-inactive+LEVEL>1-TODO=\"DONE\"-TODO=\"CANCELLED\"" ((org-agenda-overriding-header "Active project list") (org-agenda-skip-function (quote mrb/skip-non-projects)) (org-agenda-dim-blocked-tasks nil) (org-agenda-group-by-property "Group") (org-agenda-sorting-strategy (quote (alpha-up))))) ("A" "Active task list" tags-todo "-BLOCKED=\"t\"+SCHEDULED=\"\"-inactive/TODO" ((org-agenda-group-by-property "Group"))) ("r" "To Review" ((tags-todo "SCHEDULED=\"\"+DEADLINE=\"\"-{.}-BLOCKED=\"t\"/TODO" ((org-agenda-overriding-header "Untagged items"))) (tags-todo "-inactive+SCHEDULED=\"\"+DEADLINE=\"\"-BLOCKED=\"t\"+TODO=\"TODO\"+{.}" ((org-agenda-overriding-header "Unscheduled active items")))) nil) ("S" "Someday/Maybe List" ((tags "+inactive" ((org-agenda-overriding-header "Inactive projects") (org-agenda-skip-function (quote mrb/skip-non-projects)))) (tags-todo "+inactive-BLOCKED=\"t\"/TODO" ((org-agenda-overriding-header "Inactive TODO items")))) nil nil) ("c" "Scheduled overview" tags-todo "SCHEDULED<>\"\"|DEADLINE<>\"\"/TODO" ((org-agenda-overriding-header "SCHEDULED") (org-agenda-view-columns-initially t) (org-agenda-overriding-columns-format "%65ITEM %25Responsible %SCHEDULED %DEADLINE %TAGS") (org-agenda-dim-blocked-tasks t))) ("l" "Blocked projects and tasks" ((tags-todo "+BLOCKED=\"t\"/PROJ" ((org-agenda-overriding-header "Blocked projects") (org-agenda-dim-blocked-tasks t))) (tags-todo "+BLOCKED=\"t\"/TODO" ((org-agenda-overriding-header "Blocked tasks") (org-agenda-dim-blocked-tasks t) (org-agenda-group-by-property "Group")))) nil nil) ("n" "Next Action List [hides blocked/inactive/waiting/INBOX-ed]" tags-todo "+SCHEDULED=\"\"+DEADLINE=\"\"-BLOCKED=\"t\"-inactive/-WAITING" ((org-agenda-overriding-header "Next Action List") (org-agenda-group-by-property "CREATED"))) ("g" "AGENDA" agenda "" ((org-agenda-filter-preset (quote ("-inactive"))) (org-agenda-span (quote day)) (org-agenda-skip-function (quote (org-agenda-skip-entry-if (quote todo) (quote ("WAITING"))))))) ("x" "List of stuck projects (debug)" tags "-inactive+LEVEL>1-TODO=\"DONE\"-TODO=\"CANCELLED\"" ((org-agenda-skip-function (quote mrb/skip-non-stuck-projects)) (org-agenda-overriding-header "List of STUCK projects"))) ("D" "Items ready for archiving" todo "DONE" ((org-agenda-overriding-header "Items ready for archiving") (org-agenda-group-by-property "CREATED"))))))
 '(org-agenda-files (quote ("~/.outlet/_calendars/marcel.org" "~/.outlet/_calendars/sylvia.org" "~/.outlet/projects/hbx360.org" "~/.outlet/projects/reprap.org" "~/.outlet/ideas.org" "~/.outlet/GTD.org" "~/.outlet/orgmode.org" "~/.outlet/projects/cobra.org" "~/.outlet/habits.org" "~/.outlet/blogs/blogs.org" "~/.outlet/projects/keuken.org" "~/.outlet/_calendars/meetings.org")))
 '(org-agenda-todo-ignore-scheduled (quote future))
 '(org-alphabetical-lists t)
 '(org-beamer-outline-frame-options nil)
 '(org-beamer-outline-frame-title "Onderwerpen")
 '(org-blocker-ignore-ancestor-siblings t)
 '(org-export-docbook-xsl-fo-proc-command "fop %i %o")
 '(org-export-docbook-xslt-proc-command "xsltproc --output %o %s %i")
 '(org-export-htmlize-output-type (quote css))
 '(org-export-htmlized-org-css-url "orgmode.css")
 '(org-export-latex-classes (quote (("article" "\\documentclass[11pt,a4paper,twoside]{article}" ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}") ("\\paragraph{%s}" . "\\paragraph*{%s}") ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) ("report" "\\documentclass[11pt]{report}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("book" "\\documentclass[11pt]{book}" ("\\part{%s}" . "\\part*{%s}") ("\\chapter{%s}" . "\\chapter*{%s}") ("\\section{%s}" . "\\section*{%s}") ("\\subsection{%s}" . "\\subsection*{%s}") ("\\subsubsection{%s}" . "\\subsubsection*{%s}")) ("beamer" "\\documentclass{beamer}" org-beamer-sectioning))))
 '(org-export-latex-hyperref-format "\\ref{%s}:{%s}")
 '(org-export-latex-title-command "")
 '(org-mime-use-property-inheritance t)
 '(org-plantuml-jar-path "/home/mrb/dev/emacs/packages/org-mode/contrib/scripts/plantuml.jar")
 '(org-stuck-projects (quote ("-inactive/+TODO" ("TODO" "WAITING") nil "")))
 '(org-tags-column -110)
 '(org-tags-exclude-from-inheritance (quote ("area" "encrypt")))
 '(org-time-stamp-custom-formats (quote ("<%m/%d/%y %a>" . "<%H:%M>")))
 '(org-todo-state-tags-triggers (quote (("TODO" ("inactive")) ("DONE" ("inactive") ("fork")) ("BUY" ("buy" . t)))))
 '(org-toodledo-flatten-all-tasks t)
 '(org-toodledo-inhibit-https t)
 '(org-toodledo-sync-new-completed-tasks t)
 '(org-toodledo-sync-on-save "no")
 '(package-archives (quote (("ELPA" . "http://tromey.com/elpa/") ("gnu" . "http://elpa.gnu.org/packages/") ("marmalade" . "http://marmalade-repo.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/") ("org-mode" . "http://orgmode.org/elpa/"))))
 '(safe-local-variable-values (quote ((buffer-auto-save-file-name))))
 '(sgml-xml-mode t)
 '(show-paren-mode t)
 '(smart-tab-disabled-major-modes (quote (org-mode org-agenda-mode term-mode)))
 '(sql-postgres-options (quote ("-P" "pager=off" "-p 5434")))
 '(sql-server "dbserver.hsdev.com")
 '(tab-always-indent (quote complete))
 '(typopunct-buffer-language (quote english))
 '(wtf-custom-alist (quote (("YOLO" . "you only live once")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#303030" :foreground "#dcdccc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "microsoft" :family "Consolas"))))
 '(flyspell-duplicate ((t (:foreground "goldenrod" :underline t :weight bold))) t)
 '(flyspell-incorrect ((t (:foreground "tomato" :underline t :weight bold))) t)
 '(identica-stripe-face ((t (:inherit font-lock-string :background "gray25"))) t)
 '(isearch ((t (:background "green yellow" :foreground "black"))))
 '(lazy-highlight ((t (:inherit isearch-lazy-highlight :background "tomato"))))
 '(org-agenda-date ((t (:inherit org-agenda-structure :height 1.2))) t)
 '(org-agenda-date-today ((t (:foreground "white" :slant italic :weight bold :height 1.2))) t)
 '(org-agenda-structure ((t (:inherit font-lock-comment-face :weight bold :height 1.1))))
 '(org-column ((t (:strike-through nil :underline nil :slant normal :weight normal :height 98 :family "Consolas"))))
 '(org-date ((t (:foreground "#8cd0d3" :underline nil :height 0.85))))
 '(org-document-info ((((class color) (background light)) (:inherit org-date))))
 '(org-headline-done ((t (:foreground "#afd8af" :weight bold))))
 '(org-hide ((t (:foreground "#303030"))))
 '(org-list-dt ((t (:foreground "cornflower blue" :weight bold))))
 '(org-property-value ((t (:height 0.85))) t)
 '(org-sexp-date ((t (:height 0.85))))
 '(org-special-keyword ((t (:height 0.85))))
 '(show-paren-match ((t (:background "#3c3c3c")))))

