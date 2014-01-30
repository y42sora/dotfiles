;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-

(define-key global-map [(C m)] 'newline-and-indent)
(define-key global-map [(C b)] 'newline)
(define-key global-map [(C n)] 'forward-char)
(define-key global-map [(C c)] 'previous-line)
(define-key global-map [(C h)] 'backward-char)
(define-key global-map [(C t)]  'next-line)
(define-key global-map [(C s)]  'move-end-of-line)
(define-key global-map [(C d)]  'move-beginning-of-line)
(define-key global-map [(C l)]  'recenter)
(define-key global-map [(C e)]  'delete-backward-char)
(define-key global-map [(C .)]  'kill-line)

(global-set-key (kbd "C-z") ctl-x-map)
