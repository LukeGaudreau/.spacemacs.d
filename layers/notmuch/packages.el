;;; packages.el --- notmuch layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Luke Gaudreau <luke@infosoph.org>
;; URL: https://github.com/LukeGaudreau/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defconst notmuch-packages
  '(notmuch))

(defun notmuch/init-notmuch ()
  (use-package notmuch
    :init
    (progn
      (spacemacs/set-leader-keys "a n" 'notmuch))
    :config
    (progn
      (evilified-state-evilify-map notmuch-hello-mode-map
        :mode notmuch-hello-mode
        :bindings
        (kbd "RET") 'notmuch-tree-button-activate
        )
      (evilified-state-evilify-map notmuch-tree-mode-map
        :mode notmuch-tree-mode
        :bindings
        (kbd "q") 'notmuch-bury-or-kill-this-buffer
        (kbd "?") 'notmuch-help
        (kbd "RET") 'notmuch-tree-show-message
        (kbd "j") 'notmuch-tree-next-message
        (kbd "k") 'notmuch-tree-prev-message))))


;;; packages.el ends here
