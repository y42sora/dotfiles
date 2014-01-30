;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;;; macros
(defmacro require-with (name &rest body)
  (declare (indent 1))
  (let ((require-state `(require ,name nil t)))
    (cond
     (body `(when ,require-state ,@body))
     (t    require-state))))

(defmacro pkg-sync (name &optional require &rest body)
  (declare (indent 1))
  (let* ((is-require (eq require 'require))
         (refresh-state
          `(unless (assq ,name package-alist)
             (package-refresh-contents)))
         (install-state
          `(unless (package-installed-p ,name)
             (package-install ,name)))
         (when-state
          (cond
           (is-require `(require-with ,name ,@body))
           (body       `(progn ,@body))
           (t          '())))
         (output
          (cond
           (when-state `(progn ,refresh-state ,install-state ,when-state))
           (t          install-state))))
    output))
