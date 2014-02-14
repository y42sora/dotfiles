(require 'cl)

(defvar installing-package-list
  '(
	;; ここに使っているパッケージを書く。
	open-junk-file
	http-post-simple
	org
	jabber
	))



(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))
