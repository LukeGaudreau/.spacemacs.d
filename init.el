;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     yaml
     python
     ;; slack
     rust
     javascript
     ruby
     php
     html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; auto-completion
     ;; better-defaults
     ;; deft
     emacs-lisp
     git
     markdown
     ;; notmuch
     ;; mu4e
     org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     vagrant
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(zeal-at-point alert rainbow-mode solarized-theme frames-only-mode org-trello)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(org-projectile)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'markdown-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(halcyon-light
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Iosevka"
                               :size 26
                               :weight normal
                               :width normal
                               :powerline-scale 1.5)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize t
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  ;; Load themes from ~/.spacemacs
  (setq custom-theme-directory dotspacemacs-directory)
  ;; Always use fullscreen for magit
  (setq-default git-magit-status-fullscreen t)
  ;; (setq org-caldav-url "https://www.google.com/calendar/dav"
  ;;       org-caldav-calendar-id "gaudreal@bc.edu"
  ;;       org-caldav-inbox "~/Notes/Calendar.org"
  ;;       org-caldav-files '("~/Notes/Work.org")
  ;;       org-icalendar-timezone "America/New York")
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  ;; load path
  (push "~/.spacemacs.d" load-path)
  ;; appearance
  (when (spacemacs/system-is-mac)
    (menu-bar-mode 1))
  (add-to-list 'auto-mode-alist '(".*mutt.*" . mail-mode))
  (frames-only-mode)
  (setq-default frame-title-format "%b - %m")
  (add-hook 'prog-mode-hook (lambda ()
			                       (setq-local frame-title-format "%b - Code")
                             ))
  ;; git
  (setq magit-repository-directories '("~/projects/"))

  ;; zeal
  (spacemacs/set-leader-keys
    "od" 'zeal-at-point)

  ;; slack

  ;; (slack-register-team
  ;;  :name "bclibraries"
  ;;  :default t
  ;;  :client-id "25231912357.361611965683"
  ;;  :client-secret "d095a9d51a2bb9747f0a418ec914e9e4"
  ;;  :token "xoxp-25231912357-226958789126-362623595254-3568bb5a3d983d1e4540b8d1113b05ed"
  ;;  :subscribed-channels '(general miraspace))
  ;; (setq slack-buffer-emojify t) ;; if you want to enable emoji, default nil
  ;; (setq slack-prefer-current-team t)
  ;; (setq alert-default-style 'libnotify)

  ;;org
  (with-eval-after-load 'org
    ;; Org general settings
    (setq org-directory "~/Notes/"
          org-trello-files '("~/Notes/Primo.org")
          org-agenda-files '("~/Notes/Inbox.org" "~/Notes/Work.org" "~/Notes/Calendar.org" "~/Notes/Primo.org")
          org-agenda-skip-deadline-if-done t
          org-agenda-skip-scheduled-if-done t
          org-agenda-timegrid-use-ampm t
          org-agenda-window-setup 'only-window
          org-agenda-block-separator 32 ; separate agenda blocks with a blank line
          org-deadline-warning-days 0
          org-src-tab-acts-natively t
          org-src-fontify-natively t
          org-tags-match-list-sublevels nil
          org-tags-column 0
          org-tags-exclude-from-inheritance '(Project)
          org-use-tag-inheritance t
          org-agenda-hide-tags-regexp "red\\|orange\\|green\\|blue\\|yellow\\|sky\\|pink\\|black\\|purple\\|Project\\|Inbox"
          org-hide-emphasis-markers t)
    (setq org-bullets-bullet-list '("•" "•" "•" "•"))
    (setq org-file-apps
          (quote((auto-mode . emacs)
                 ("\\.mm\\'" . default)
                 ("\\.x?html?\\'" . "xdg-open %s")
                 ("\\.pdf\\'" . "xdg-open %s"))
                ))
    ;; Org Mode Hook
    (add-hook 'org-mode-hook (lambda ()
			                         (visual-line-mode t)
			                         (setq line-spacing 0.5)
                               ))
    ;; Link to tag searches
    (org-add-link-type
     "tag" 'lg/follow-tag-link)

    (defun lg/follow-tag-link (tag)
      "Display a list of TODO headlines with tag TAG.
With prefix argument, also display headlines without a TODO keyword."
      (org-tags-view (null current-prefix-arg) tag))

    ;; Variable pitch
      ;; (require 'org-variable-pitch)
      ;; (add-hook 'org-mode-hook 'org-variable-pitch-minor-mode)
    (eval-after-load "org-agenda"
      '(progn
	       (define-key org-agenda-mode-map (kbd "RET") 'org-agenda-goto)
	       (define-key org-agenda-mode-map (kbd "TAB") 'org-agenda-switch-to)
	       ;; (advice-add 'org-agenda-goto :after
		     ;;             (lambda (&rest args)
         ;;               (org-narrow-to-subtree)))
         ))
    ;; ORG Agenda
    (setq org-agenda-prefix-format '((agenda . "%?-12t% s")
					                           (timeline . "  % s")
					                           (todo . "")
					                           (tags . "")
                                     (search . "")))
    (setq org-agenda-scheduled-leaders '("" "")
          org-agenda-deadline-leaders '("Due:  " "Due in %3d d.: " "%3d d. Overdue: "))
    (setq org-agenda-entry-text-exclude-regexps '("-~21-Points"))
    (setq org-agenda-custom-commands
          (quote (("N" "Notes" tags "Note"
                   ((org-agenda-overriding-header "Notes")
                    (org-tags-match-list-sublevels t)))
                  ("I" "Inbox"
                   ((tags-todo "Inbox"
                               ((org-agenda-overriding-header "Inbox")
                                (org-agenda-tags-todo-honor-ignore-options t)
                                (org-tags-match-list-sublevels nil)))))
                  ("T" "Today"
                   ((agenda "-Inbox/-DONE"
                            ((org-agenda-overriding-header "Today")
                             (org-agenda-entry-types '(:timestamp :deadline :scheduled))
                             (org-agenda-span 1)
                             ))
                    (todo "NEXT\|Current-Sprint-~21-points"
                               ((org-agenda-overriding-header "Next")
                                (org-agenda-ignore-scheduled t)
                                (org-agenda-tags-todo-honor-ignore-options t)
                                (org-agenda-todo-ignore-deadlines t)
                                (org-agenda-todo-ignore-scheduled t)
                                ))
                    (tags-todo "Inbox/-NEXT"
                               ((org-agenda-overriding-header "Inbox")
                                (org-agenda-tags-todo-honor-ignore-options t)
                                (org-tags-match-list-sublevels nil)))
                    ))
                  ("W" "Weekly Review"
                   ((agenda "/-DONE"
                            ((org-agenda-overriding-header "This Week")
                             (org-agenda-entry-types '(:timestamp :deadline :scheduled))))
                    (org-agenda-list-stuck-projects)
                    (todo "NEXT\|Current-Sprint-~21-points"
                               ((org-agenda-overriding-header "Next Actions")
                                (org-agenda-ignore-scheduled t)
                                (org-agenda-tags-todo-honor-ignore-options t)
                                (org-agenda-todo-ignore-deadlines t)
                                (org-agenda-todo-ignore-scheduled t)))
                    (tags-todo "/WAITING|Blocked"
                               ((org-agenda-overriding-header "Waiting")))
                    (tags-todo "TODO"
                               ((org-agenda-overriding-header "Tasks")
                                (org-tags-match-list-sublevels nil)))
                    ))
                  )))
    (setq org-stuck-projects
          '("LEVEL=1+Project"
            ("NEXT") nil ""))

    ;; Org Todo
    (setq org-todo-keywords
          (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
                  (sequence "WAITING(w@)" "|" "CLOSED(c@)" "PLANNED(p@)"))))
    ;; Org Tags
    (setq org-tag-alist
          '(("Project" . ?p)
            ("Primo" . ?P)
            ("Miraspace" . ?m)
            ("Aeon" . ?a)
            ("ILLiad" . ?i)
            ("OJS" . ?o)
            ))
    ;; Org Capture and Refile
    (require 'org-protocol)
    (setq org-refile-targets (quote ((nil :maxlevel . 9)
                                     (org-agenda-files :maxlevel . 3)))
          org-refile-use-outline-path t
          org-outline-path-complete-in-steps nil
          org-refile-allow-creating-parent-nodes (quote confirm))
    (setq org-capture-templates
          (quote (
                  ("t" "Todo" entry (file+headline "~/Notes/Work.org" "Inbox")
                   "* TODO %?\n%U\n%a\n")
                  ("x" "org-protocol" entry (file "~/Notes/Research.org")
                   "* %? :web: \n%c\n%U\n%i\n")
                  )))
    ;; Org Reveal
    ;; (require 'ox-reveal)
    ;; (setq org-reveal-root ""
    ;;       org-reveal-slide-number nil)
    ;; Org Export
    (setq org-export-with-toc nil
          org-export-with-section-numbers nil
          org-export-headline-levels 1
          org-html-postamble nil
          org-html-doctype "html5"
          org-html-html5-fancy t)
    )
  ;; functions to show custom agenda views
  (defun org-agenda-show-today (&optional arg)
    (interactive "P")
    (org-agenda arg "T"))
  (defun org-agenda-show-inbox (&optional arg)
    (interactive "P")
    (org-agenda arg "I"))
  (defun org-agenda-show-weekly (&optional arg)
    (interactive "P")
    (org-agenda arg "W"))
  (spacemacs/set-leader-keys
    "ot" 'org-agenda-show-today
    "oi" 'org-agenda-show-inbox
    "ow" 'org-agenda-show-weekly
    "oc" 'org-capture
    "oh" 'counsel-org-agenda-headlines)
  )
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("910ebb100bec011ea3b2bf9c2be08fa32faaf09adddf11d00ef5dce051af3742" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "36c146fb837a59cd86f6fe83502fc1e034130ab00e8b87048aae926a3610f85a" default)))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#4C566A" t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(jdee-db-active-breakpoint-face-colors (cons "#191C25" "#80A0C2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#191C25" "#A2BF8A"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#191C25" "#434C5E"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-trello-current-prefix-keybinding "C-c o")
 '(package-selected-packages
   (quote
    (yaml-mode helm-pydoc helm-css-scss org-trello frames-only-mode request-deferred deferred hy-mode anaconda-mode yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode dash-functional cython-mode pythonic solarized-theme rainbow-mode exwm xelb slack emojify circe oauth2 websocket ht zerodark-theme nord-theme doom-themes easy-hugo org-projectile toml-mode racer pos-tip cargo rust-mode winum web-beautify org-category-capture org-mime livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc ghub let-alist coffee-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby phpunit phpcbf php-extras php-auto-yasnippets yasnippet drupal-mode php-mode web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode haml-mode emmet-mode zeal-at-point org-caldav hide-comnt apropospriate-theme wgrep smex ivy-hydra counsel-projectile counsel swiper ivy uuidgen org org-download link-hint git-link eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff goto-chg undo-tree eshell-z dumb-jump f diminish column-enforce-mode xterm-color ws-butler window-numbering volatile-highlights vi-tilde-fringe vagrant-tramp vagrant toc-org spacemacs-theme spaceline powerline smooth-scrolling smeargle shell-pop restart-emacs ranger rainbow-delimiters popwin persp-mode pcre2el paradox hydra spinner page-break-lines orgit org-repo-todo org-present org-pomodoro alert log4e gntp org-plus-contrib org-bullets open-junk-file notmuch neotree multi-term move-text mmm-mode markdown-toc s markdown-mode magit-gitflow macrostep lorem-ipsum linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-gitignore request helm-flx helm-descbinds helm-ag google-translate golden-ratio gnuplot gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger gh-md flx-ido flx fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit magit magit-popup git-commit with-editor evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-args evil-anzu anzu eval-sexp-fu highlight eshell-prompt-extras esh-help elisp-slime-nav deft define-word clean-aindent-mode buffer-move bracketed-paste auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup quelpa package-build use-package which-key bind-key bind-map evil)))
 '(paradox-github-token t)
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(vc-annotate-background "#191C25")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#A2BF8A")
    (cons 40 "#bac389")
    (cons 60 "#d3c788")
    (cons 80 "#ECCC87")
    (cons 100 "#e3b57e")
    (cons 120 "#da9e75")
    (cons 140 "#D2876D")
    (cons 160 "#c88982")
    (cons 180 "#be8b98")
    (cons 200 "#B58DAE")
    (cons 220 "#b97e97")
    (cons 240 "#bd6f80")
    (cons 260 "#C16069")
    (cons 280 "#a15b66")
    (cons 300 "#825663")
    (cons 320 "#625160")
    (cons 340 "#4C566A")
    (cons 360 "#4C566A")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
