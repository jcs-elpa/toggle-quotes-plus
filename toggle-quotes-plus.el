;;; toggle-quotes-plus.el --- Simple quote toggler that cycle through " ' and `   -*- lexical-binding: t; -*-

;; Copyright (C) 2019  Shen, Jen-Chieh
;; Created date 2019-03-10 21:45:21

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: Simple quote toggler that cycle through " ' and `
;; Keyword: convenience quotes
;; Version: 0.0.1
;; Package-Requires: ((emacs "25"))
;; URL: https://github.com/jcs090218/toggle-quotes-plus

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Simple quote toggler that cycle through " ' and `
;;

;;; Code:


(defgroup toggle-quotes-plus nil
  "Simple quote toggler that cycle through \" ' and `."
  :prefix "toggle-quotes-plus-"
  :group 'convenience
  :group 'tools
  :link '(url-link :tag "Repository" "https://github.com/jcs090218/toggle-quotes-plus"))



;;;###autoload
(defun toggle-quotes-plus ()
  "Toggle cycle through \" ' and `."
  (interactive)
  )

(provide 'toggle-quotes-plus)
;;; toggle-quotes-plus.el ends here
