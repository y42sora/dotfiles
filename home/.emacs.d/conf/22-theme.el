; 起動時の画面を非表示にする
(setq inhibit-startup-message t)

; スタイル
(load-theme 'deeper-blue t)

;; Mac用フォント設定
;; http://tcnksm.sakura.ne.jp/blog/2012/04/02/emacs/


(setq myfonts-alist 
      '(((japanese-jisx0213-1 japanese-jisx0212) . "Hiragino Kaku Gothic Pro 14") 
((japanese-jisx0208 katakana-jisx0201) . "Osaka 14") 
((iso-8859-7 iso-8859-5) . "Menlo 14") 
((vietnamese-viscii-lower vietnamese-viscii-upper) . "Courier 14") 
((ipa iso-8859-4 iso-8859-3 iso-8859-2 iso-8859-1) . "Menlo 14"))) 

(mapc (lambda (kv) 
(mapc (lambda (cs) (set-fontset-font nil cs (cdr kv))) (car kv))) 
      myfonts-alist) 
       
(add-to-list 'default-frame-alist 
     (cons 'font (face-attribute 'default :fontset))) 
