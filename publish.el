(require 'ox-publish)

;(setq org-export-html-style-default "")

(setq org-publish-project-alist
      '(("posts"
	 :base-directory "posts/"
	 :base-extension "org"
	 :exclude "draft*|sitemap.org|index.org"
	 :publishing-directory "blog/"
	 :recursive t
	 :publishing-function org-html-publish-to-html
	 :with-toc nil
	 :html-preamble t
	 :html-postamble t
	 :html-head "<link rel=\"stylesheet\" href=\"/css/normalize.min.css\" type=\"text/css\"><link rel=\"stylesheet\" href=\"../css/blog.css\" type=\"text/css\">"
	 :section-numbers nil
	 :with-tables t
	 :auto-sitemap t
	 :sitemap-title "The Blog"
	 :sitemap-filename "index.org"
	 :sitemap-style list
	 :author "Griffin Mareske"
	 :email "gmareske@gmail.com"
	 :with-creator t)
	("css"
	 :base-directory "css/"
	 :base-extension "css"
	 :publishing-directory "blog/css"
	 :publishing-function org-publish-attachment
	 :recursive t)
	("all" :components ("posts" "css"))))
