;;; toggle-quotes-plus.el --- Simple quote toggler that cycle through " ' and `   -*- lexical-binding: t; -*-

;; Copyright (C) 2019-2025  Shen, Jen-Chieh
;; Created date 2019-03-10 21:45:21

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; URL: https://github.com/jcs-elpa/toggle-quotes-plus
;; Version: 0.0.2
;; Package-Requires: ((emacs "25"))
;; Keyword: convenience quotes

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

(require 'cl-lib)

(defgroup toggle-quotes-plus nil
  "Simple quote toggler that cycle through \" ' and `."
  :prefix "toggle-quotes-plus-"
  :group 'convenience
  :group 'tools
  :link '(url-link :tag "Repository" "https://github.com/jcs-elpa/toggle-quotes-plus"))

(defcustom toggle-quotes-plus-chars '("\""
                                      "'"
                                      "`")
  "Character list you want to toggle through."
  :group 'toggle-quotes-plus
  :type 'list)

(defun toggle-quotes-plus--is-beginning-of-buffer-p ()
  "Is at the beginning of buffer?"
  (= (point) (point-min)))

(defun toggle-quotes-plus--is-end-of-buffer-p ()
  "Is at the end of buffer?"
  (= (point) (point-max)))

(defun toggle-quotes-plus--current-char-equal-p (c)
  "Check the current character equal to 'C'."
  (if (toggle-quotes-plus--is-beginning-of-buffer-p)
      nil
    (let ((current-char-string (string (char-before))))
      (string= current-char-string c))))

(defun toggle-quotes-plus--is-in-list-string (in-list str)
  "Check if a STR in the string list IN-LIST."
  (cl-some #'(lambda (lb-sub-str) (string= lb-sub-str str)) in-list))

(defun toggle-quotes-plus--current-char ()
  "Return the current character."
  (string (char-before)))

(defun toggle-quotes-plus--check-espace-char ()
  "Check if the current character a espace character?"
  (save-excursion
    (let ((is-esp nil))
      (backward-char 1)
      (when (string= (toggle-quotes-plus--current-char) "\\")
        (setq is-esp t))
      is-esp)))

(defun toggle-quotes-plus--forward-a-char-in-cycle ()
  "Move forward to a character that are in the `toggle-quotes-plus-chars' list."
  (forward-char 1)
  (while (and (not (toggle-quotes-plus--is-end-of-buffer-p))
              (or (not (toggle-quotes-plus--is-in-list-string toggle-quotes-plus-chars (toggle-quotes-plus--current-char)))
                  (toggle-quotes-plus--check-espace-char)))
    (forward-char 1)))

(defun toggle-quotes-plus--backward-a-char-in-cycle ()
  "Move backward to a character that are in the `toggle-quotes-plus-chars' list."
  (while (and (not (toggle-quotes-plus--is-beginning-of-buffer-p))
              (or (not (toggle-quotes-plus--is-in-list-string toggle-quotes-plus-chars (toggle-quotes-plus--current-char)))
                  (toggle-quotes-plus--check-espace-char)))
    (backward-char 1)))

(defun toggle-quotes-plus--next-char-in-list (current-char)
  "Get the next character in the `toggle-quotes-plus-chars' list.
CURRENT-CHAR : Current character to search for next character in list."
  (let ((lst-len (length toggle-quotes-plus-chars))
        (current-char-index -1)
        (next-char-index -1))
    (setq current-char-index (cl-position current-char
                                          toggle-quotes-plus-chars
                                          :test 'string=))
    (setq next-char-index (+ current-char-index 1))
    (when (= next-char-index lst-len)
      (setq next-char-index 0))
    (nth next-char-index toggle-quotes-plus-chars)))

(defun toggle-quotes-plus--replace-next-char-in-cycle ()
  "Replace the current character to the next character at current point."
  (let ((current-char (toggle-quotes-plus--current-char))
        (next-char ""))
    (backward-delete-char 1)
    (setq next-char (toggle-quotes-plus--next-char-in-list current-char))
    (insert next-char)))

;;;###autoload
(defun toggle-quotes-plus ()
  "Toggle cycle through \" ' and `."
  (interactive)
  (let ((start-pt (point)))
    (toggle-quotes-plus--forward-a-char-in-cycle)
    (unless (toggle-quotes-plus--is-end-of-buffer-p)
      (toggle-quotes-plus--replace-next-char-in-cycle))
    (goto-char start-pt)
    (toggle-quotes-plus--backward-a-char-in-cycle)
    (unless (toggle-quotes-plus--is-beginning-of-buffer-p)
      (toggle-quotes-plus--replace-next-char-in-cycle))
    (goto-char start-pt)))

(provide 'toggle-quotes-plus)
;;; toggle-quotes-plus.el ends here
