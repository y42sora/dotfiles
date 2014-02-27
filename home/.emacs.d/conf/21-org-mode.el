;;;
;;; org-mode
;;;

;; org-modeの初期化
(require 'org)
(require 'org-id)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-ca" 'org-agenda)

(defun browse-evernote-url (evernote-url)
  (let ()
    (cond
     ((string-equal system-type "windows-nt") ; Windows not implementation yet
      (shell-command (concat " " evernote-url))
      )
     ((string-equal system-type "gnu/linux") ; linux not implementation yet
      (shell-command (concat " " evernote-url))
      )
     ((string-equal system-type "darwin") ; Mac
      (shell-command (concat "open " evernote-url))
       ) )
    ))

(org-add-link-type "evernote" 'org-evernote-open)
(defun org-evernote-open (path)
(browse-evernote-url (concatenate 'string "evernote:" path)))


(setq org-agenda-window-setup 'current-window) 
