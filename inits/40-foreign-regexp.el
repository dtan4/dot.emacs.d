;; M-s M-s: incremental regexp search
;; M-s M-r: incremental regexp search (reverse)
;; M-s M-%: regexp replace

(cond ((require 'foreign-regexp nil t)
       (custom-set-variables
        '(foreign-regexp/regexp-type 'ruby)
        '(reb-re-syntax 'foreign-regexp))))
