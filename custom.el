;;;; Custom file generated by emacs: best not to edit
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(battery-mode-line-format "[%b%p%%~%mmin]")
 '(column-number-mode t)
 '(command-frequency-autosave-mode t)
 '(compilation-scroll-output t)
 '(custom-safe-themes t)
 '(default-input-method "TeX")
 '(dired-bind-jump nil)
 '(doc-view-ghostscript-options
   (quote
    ("-dNOSAFER" "-dNOPAUSE" "-sDEVICE=png16m" "-dTextAlphaBits=4" "-dBATCH" "-dGraphicsAlphaBits=4" "-dQUIET")))
 '(doc-view-resolution 200)
 '(epg-gpg-program "/usr/bin/gpg2")
 '(erc-hide-list (quote ("JOIN" "KICK" "PART" "QUIT")))
 '(erc-modules
   (quote
    (completion keep-place networks ring track hl-nicks netsplit fill button match readonly autojoin noncommands irccontrols move-to-prompt stamp menu list)))
 '(eshell-modules-list
   (quote
    (eshell-alias eshell-banner eshell-basic eshell-cmpl eshell-dirs eshell-glob eshell-hist eshell-ls eshell-pred eshell-prompt eshell-rebind eshell-script eshell-term eshell-unix)))
 '(explicit-shell-file-name "/bin/bash")
 '(flyspell-issue-message-flag nil)
 '(font-lock-maximum-size nil)
 '(gist-ask-for-description t)
 '(goto-address-url-mouse-face (quote default))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(guess-language-languages (quote (en de nl)))
 '(haskell-interactive-popup-errors nil)
 '(ido-vertical-define-keys (quote C-n-C-p-up-down-left-right))
 '(ispell-use-framepop-p t)
 '(mail-signature nil)
 '(markdown-css-path "/home/mrb/.markdown.css")
 '(mu4e-attachment-dir "/home/mrb/Downloads")
 '(notmuch-saved-searches
   (quote
    ((:name "inbox" :query "tag:inbox")
     (:name "unread" :query "tag:unread"))))
 '(nxml-heading-element-name-regexp "\\|.*")
 '(nxml-section-element-name-regexp "\\|file\\|.+")
 '(ocpf-frame-parameters
   (quote
    ((name . "org-capture-pop-frame")
     (width . 115)
     (height . 15)
     (tool-bar-lines . 0)
     (menu-bar-lines . 0))))
 '(org-M-RET-may-split-line (quote ((default . t) (headline))))
 '(org-agenda-custom-commands
   (quote
    (("w" "Waiting For list" tags-todo "-inactive/WAITING"
      ((org-agenda-overriding-header "WAITING FOR-list")
       (org-agenda-dim-blocked-tasks t)
       (org-agenda-group-by-property "Responsible")))
     ("b" "Buying list"
      ((tags-todo "-inactive+buy/TODO"
		  ((org-agenda-overriding-header "Buying list (tagged)")))
       (tags-todo "-inactive/BUY"
		  ((org-agenda-overriding-header "Buying list (keyword)"))))
      nil)
     ("p" "Active project list" tags-todo "-ignore-inactive+LEVEL>1-TODO=\"DONE\"-TODO=\"CANCELLED\""
      ((org-agenda-overriding-header "Active project list")
       (org-agenda-skip-function
	(quote mrb/skip-non-projects))
       (org-agenda-dim-blocked-tasks nil)
       (org-agenda-group-by-property "Group")
       (org-agenda-sorting-strategy
	(quote
	 (alpha-up)))))
     ("A" "Active task list" tags-todo "+SCHEDULED=\"\"-inactive/TODO"
      ((org-agenda-group-by-property "Group")
       (org-agenda-dim-blocked-tasks
	(quote invisible))))
     ("r" "To Review"
      ((tags-todo "SCHEDULED=\"\"+DEADLINE=\"\"-{.}/TODO"
		  ((org-agenda-overriding-header "Untagged items")))
       (tags-todo "-inactive+SCHEDULED=\"\"+DEADLINE=\"\"+TODO=\"TODO\"+{.}"
		  ((org-agenda-overriding-header "Unscheduled active items"))))
      ((org-agenda-dim-blocked-tasks
	(quote invisible))))
     ("S" "Someday/Maybe List"
      ((tags "+inactive"
	     ((org-agenda-overriding-header "Inactive projects")
	      (org-agenda-skip-function
	       (quote mrb/skip-non-projects))))
       (tags-todo "+inactive-BLOCKED=\"t\"/TODO"
		  ((org-agenda-overriding-header "Inactive TODO items"))))
      nil nil)
     ("c" "Scheduled overview" tags-todo "SCHEDULED<>\"\"|DEADLINE<>\"\"/TODO"
      ((org-agenda-overriding-header "SCHEDULED")
       (org-agenda-view-columns-initially t)
       (org-agenda-overriding-columns-format "%65ITEM %25Responsible %SCHEDULED %DEADLINE %TAGS")
       (org-agenda-dim-blocked-tasks t)))
     ("l" "Blocked projects and tasks"
      ((tags-todo "+BLOCKED=\"t\"/PROJ"
		  ((org-agenda-overriding-header "Blocked projects")
		   (org-agenda-dim-blocked-tasks t)))
       (tags-todo "+BLOCKED=\"t\"/TODO"
		  ((org-agenda-overriding-header "Blocked tasks")
		   (org-agenda-dim-blocked-tasks t)
		   (org-agenda-group-by-property "Group"))))
      nil nil)
     ("n" "Next Action List [hides blocked/inactive/waiting/INBOX-ed]" tags-todo "+SCHEDULED=\"\"+DEADLINE=\"\"-BLOCKED=\"t\"-inactive-habit-ARCHIVE/-WAITING-INFO-HOWTO"
      ((org-agenda-overriding-header "Next Action List")
       (org-agenda-dim-blocked-tasks
	(quote invisible))
       (org-agenda-group-by-property "CREATED")))
     ("x" "List of stuck projects (debug)" tags "-inactive+LEVEL>1-TODO=\"DONE\"-TODO=\"CANCELLED\""
      ((org-agenda-skip-function
	(quote mrb/skip-non-stuck-projects))
       (org-agenda-overriding-header "List of STUCK projects")))
     ("D" "Items ready for archiving" todo "DONE"
      ((org-agenda-overriding-header "Items ready for archiving")
       (org-agenda-group-by-property "CREATED")))
     ("T" "Today's list" tags "+CATEGORY=\"INBOX\"+LEVEL=2"
      ((org-agenda-overriding-header "INBOX: These items should be refiles or completed")
       (org-agenda-prefix-format "  ")))
     ("g" "AGENDA"
      ((agenda ""
	       ((org-agenda-filter-preset
		 (quote
		  ("-inactive")))
		(org-agenda-span
		 (quote day))))
       (todo "COLLECT" nil))
      ((org-agenda-dim-blocked-tasks
	(quote invisible))
       (org-agenda-archives-mode t)))
     ("$" "Expected revenue" tags "Effort<>\"\""
      ((org-agenda-overriding-columns-format "%40ITEM %10Effort")
       (org-agenda-sorting-strategy
	(quote
	 (effort-down))))))))
 '(org-agenda-ignore-properties (quote (effort appt category)))
 '(org-agenda-text-search-extra-files
   (quote
    (agenda-archives "~/dat/org/_orgmeta/archive-2016.org" "~/dat/org/_orgmeta/archive-2015.org" "~/dat/org/_orgmeta/archive-2014.org" "~/dat/org/_orgmeta/archive-2013.org" "~/dat/org/_orgmeta/archive-2012.org" "~/dat/org/_orgmeta/archive-2011.org")))
 '(org-agenda-todo-ignore-scheduled (quote future))
 '(org-beamer-outline-frame-options nil)
 '(org-beamer-outline-frame-title "Onderwerpen")
 '(org-blocker-ignore-ancestor-siblings t)
 '(org-clock-x11idle-program-name "xprintidle")
 '(org-closed-keep-when-no-todo t)
 '(org-contacts-files (quote ("~/dat/org/odoo-contacts.org")))
 '(org-contacts-icon-use-gravatar nil)
 '(org-ditaa-jar-path "/home/mrb/bin/ditaa.jar")
 '(org-entities-user (quote (("cmd" "\\cmd{}" nil "⌘" "⌘" "⌘" "⌘"))))
 '(org-export-backends (quote (ascii html icalendar latex md odt org texinfo)))
 '(org-export-copy-to-kill-ring (quote if-interactive))
 '(org-export-docbook-xsl-fo-proc-command "fop %i %o" t)
 '(org-export-docbook-xslt-proc-command "xsltproc --output %o %s %i" t)
 '(org-export-htmlize-output-type (quote css) t)
 '(org-export-latex-classes
   (quote
    (("article" "\\documentclass[11pt,a4paper,twoside]{article}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
      ("\\paragraph{%s}" . "\\paragraph*{%s}")
      ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
     ("report" "\\documentclass[11pt]{report}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("book" "\\documentclass[11pt]{book}"
      ("\\part{%s}" . "\\part*{%s}")
      ("\\chapter{%s}" . "\\chapter*{%s}")
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
     ("beamer" "\\documentclass{beamer}" org-beamer-sectioning))) t)
 '(org-export-latex-hyperref-format "\\ref{%s}:{%s}" t)
 '(org-export-latex-title-command " " t)
 '(org-export-with-tags nil)
 '(org-export-with-todo-keywords nil)
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.dia\\'" . "dia %s")
     ("\\.mm\\'" . default)
     ("\\.pdf\\'" . emacs))))
 '(org-html-toplevel-hlevel 3)
 '(org-insert-heading-respect-content nil)
 '(org-latex-default-packages-alist
   (quote
    (("QX" "fontenc" t)
     ("" "lmodern" t)
     ("AUTO" "inputenc" t)
     ("" "fixltx2e" nil)
     ("" "graphicx" t)
     ("" "longtable" nil)
     ("" "float" nil)
     ("" "wrapfig" nil)
     ("" "soul" nil)
     ("" "textcomp" t)
     ("" "marvosym" t)
     ("" "wasysym" t)
     ("" "latexsym" t)
     ("" "amssymb" t)
     ("" "amstext" nil)
     ("hidelinks" "hyperref" nil)
     "\\tolerance=1000")))
 '(org-latex-pdf-process
   (quote
    ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")))
 '(org-latex-title-command " ")
 '(org-latex-to-pdf-process
   (quote
    ("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f" "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f")) t)
 '(org-list-allow-alphabetical t)
 '(org-mime-use-property-inheritance t)
 '(org-org-htmlized-css-url "orgmode.css")
 '(org-plantuml-jar-path
   "/home/mrb/dat/src/emacs/packages/org-mode/contrib/scripts/plantuml.jar")
 '(org-stuck-projects (quote ("-inactive/+TODO" ("TODO" "WAITING") nil "")))
 '(org-tags-column -110)
 '(org-tags-exclude-from-inheritance (quote ("area" "encrypt")))
 '(org-time-stamp-custom-formats (quote ("<%m/%d/%y %a>" . "<%H:%M>")))
 '(org-todo-state-tags-triggers
   (quote
    (("TODO"
      ("inactive"))
     ("DONE"
      ("inactive")
      ("fork"))
     ("BUY"
      ("buy" . t)))))
 '(org-use-fast-tag-selection (quote auto))
 '(pdf-misc-print-programm "/usr/bin/gtklp")
 '(reb-re-syntax (quote string))
 '(safe-local-variable-values
   (quote
    ((TeX-master . t)
     (hamlet/basic-offset . 4)
     (haskell-process-use-ghci . t)
     (haskell-indent-spaces . 4)
     (encoding . utf-8)
     (buffer-auto-save-file-name))))
 '(scad-keywords (quote ("return" "true" "false" "include")))
 '(sgml-xml-mode t)
 '(show-paren-mode t)
 '(show-paren-priority 98)
 '(sieve-manage-authenticators (quote (plain digest-md5 cram-md5 scram-md5 ntlm login)))
 '(sql-postgres-options (quote ("-P" "pager=off" "-p 5434")))
 '(sql-server "dbserver.hsdev.com")
 '(typo-quotation-marks
   (quote
    (("Czech" "„" "“" "‚" "‘")
     ("Czech (Guillemets)" "»" "«" "›" "‹")
     ("English" "“" "”" "‘" "’")
     ("German" "„" "“" "‚" "‘")
     ("German (Guillemets)" "»" "«" "›" "‹")
     ("French" "«" "»" "‹" "›")
     ("Finnish" "”" "”" "’" "’")
     ("Finnish (Guillemets)" "»" "»" "›" "›")
     ("Russian" "«" "»" "„" "“")
     ("Italian" "«" "»" "“" "”")
     ("Dutch" "“" "”" "‘" "’"))))
 '(typopunct-buffer-language (quote english))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(warning-suppress-types (quote ((undo))))
 '(winner-mode t)
 '(wtf-custom-alist (quote (("YOLO" . "you only live once"))))
 '(x-select-enable-clipboard-manager nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((((class color) (min-colors 89)) (:background "#151515"))))
 '(company-tooltip ((((class color) (min-colors 89)) (:foreground "#ffffff" :background "#151515"))))
 '(company-tooltip-common ((((class color) (min-colors 89)) (:foreground "#cf6a4c" :background "#151515"))))
 '(company-tooltip-common-selection ((((class color) (min-colors 89)) (:foreground "#cf6a4c" :background "#474e90"))))
 '(company-tooltip-selection ((((class color) (min-colors 89)) (:background "#474e90"))))
 '(fixed-pitch ((t (:family "DefjaVu Sans Mono"))))
 '(flyspell-duplicate ((t (:foreground "goldenrod" :underline t :weight bold))))
 '(flyspell-incorrect ((t (:foreground "tomato" :underline t :weight bold))))
 '(hs-face ((t (:foreground "light salmon" :box (:line-width 1 :color "gray25") :height 0.7))))
 '(identica-stripe-face ((t (:background "dim gray"))) t)
 '(markdown-code-face ((t (:inherit org-verbatim :background "#2bd22bd22bd2"))))
 '(org-agenda-current-time ((t (:inherit org-time-grid :foreground "spring green"))))
 '(org-agenda-date ((t (:inherit org-agenda-structure :height 1.2))))
 '(org-agenda-date-today ((t (:foreground "white" :slant italic :weight bold :height 1.2))))
 '(org-agenda-structure ((t (:inherit font-lock-comment-face :weight bold :height 1.1))))
 '(org-block-background ((t nil)))
 '(org-column ((t (:strike-through nil :underline nil :slant normal :weight normal :height 98))))
 '(org-document-info ((((class color) (background light)) (:inherit org-date))))
 '(org-ellipsis ((t (:underline nil :foreground "#E0CF9F"))))
 '(org-headline-done ((t (:foreground "#afd8af" :weight bold))))
 '(org-hide ((t (:foreground "#303030"))))
 '(org-list-dt ((t (:foreground "cornflower blue" :weight bold))))
 '(org-property-value ((t (:height 0.85))) t)
 '(org-sexp-date ((t (:height 0.85))))
 '(org-table ((t (:inherit nil :foreground "#9FC59F"))))
 '(org-verbatim ((t (:inherit shadow :foreground "light blue"))))
 '(persp-selected-face ((t (:foreground "cornflower blue" :weight bold))))
 '(show-paren-match ((t (:background "#3c3c3c")))))
