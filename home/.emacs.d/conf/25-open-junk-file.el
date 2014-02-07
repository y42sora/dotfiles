;; @ 使い捨てのファイルを開く open-junk-file.el
;; 読み込み
(require 'open-junk-file)
;; ファイル名およびファイル場所の指定
(setq open-junk-file-format "~/aa_files/Dropbox/data/emacs/%Y%m/%Y-%m-%d memo.txt")
(global-set-key (kbd "C-,") 'open-junk-file)


