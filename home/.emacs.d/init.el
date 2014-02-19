
;; -*- Mode: Emacs-Lisp ; Coding: utf-8 -*-
;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(when (>= emacs-major-version 24)                                                                                                                                                     
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
 (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
  )

;;; el-get
;; 複数のソースからパッケージをインストールできるパッケージ管理システム
;; 2012-03-15
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (end-of-buffer)
    (eval-print-last-sexp)))
;; レシピ置き場
(add-to-list 'el-get-recipe-path
             (concat (file-name-directory load-file-name) "/el-get/recipes"))

;; 追加のレシピ置き場

(add-to-list 'el-get-recipe-path "~/.emacs.d/recipes")
(el-get 'sync)

;; Packages to install from el-get
(defvar my/el-get-packages
  '(
    init-loader
    org-toodledo
    )
  "A list of packages to install from el-get at launch.")

(el-get 'sync my/el-get-packages)


(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/conf")
(init-loader-load "~/aa_files/Dropbox/data/tools/emacs")

