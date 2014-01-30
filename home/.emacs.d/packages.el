;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;;; package.el
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(pkg-sync 'exec-path-from-shell require
          (exec-path-from-shell-initialize))

;;; el-get
(add-to-list 'load-path (locate-user-emacs-file "./el-get/el-get"))
(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (let (el-get-master-branch)
       (goto-char (point-max))
       (eval-print-last-sexp)))))
(require 'el-get nil t)
(add-to-list 'el-get-recipe-path (locate-user-emacs-file "./recipes"))

(el-get 'sync)
