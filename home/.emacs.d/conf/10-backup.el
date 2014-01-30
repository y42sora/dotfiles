;; ---------------------------------------------
;; ファイルの自動バックアップ
;; ---------------------------------------------

; バックアップファイルを一箇所にまとめる
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
 backup-directory-alist))

; バックアップのバージョン管理を行う
(setq version-control t)
  
; 新しいものをいくつ残すか
(setq kept-new-versions 3)

; 古いものをいくつ残すか
(setq kept-old-versions 3)

; 古いバージョンを消去するのに確認を求めない。
(setq delete-old-versions t)
;; ---------------------------------------------
;; ファイルの自動バックアップ
;; ---------------------------------------------

; バックアップファイルを一箇所にまとめる
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
 backup-directory-alist))

; バックアップのバージョン管理を行う
(setq version-control t)
  
; 新しいものをいくつ残すか
(setq kept-new-versions 3)

; 古いものをいくつ残すか
(setq kept-old-versions 3)

; 古いバージョンを消去するのに確認を求めない。
(setq delete-old-versions t)
