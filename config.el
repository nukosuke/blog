;;; config.el --- Config -*- lexical-binding: t -*-

(setq org-static-blog-publish-title "blog")
(setq org-static-blog-publish-url (concat (getenv "URL") "/"))
(setq org-static-blog-publish-directory (concat default-directory "/dist/"))
(setq org-static-blog-posts-directory (concat default-directory "/posts/"))
(setq org-static-blog-drafts-directory (concat default-directory "/drafts/"))
(setq org-static-blog-enable-tags t)
(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

(defun file-to-string (file)
  "FILE to string function."
  (with-temp-buffer
    (insert-file-contents file)
    (buffer-string)))

(setq org-static-blog-page-header
      (file-to-string (concat default-directory "partial/header.html")))

(setq org-static-blog-page-preamble
      (file-to-string (concat default-directory "partial/preamble.html")))

(setq org-static-blog-page-postamble
      (file-to-string (concat default-directory "partial/postamble.html")))

(setq org-static-blog-index-front-matter
      (file-to-string (concat default-directory "partial/front-matter.html")))

(defun org-static-blog-init ()
  "Make directory for org-static-blog."
  (make-directory org-static-blog-publish-directory t)
  (make-directory org-static-blog-posts-directory t)
  (make-directory org-static-blog-drafts-directory t))
(org-static-blog-init)

;;; config.el ends here
