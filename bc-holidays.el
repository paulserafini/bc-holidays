(setq calendar-holidays
      '((holiday-fixed 1 1 "New Years Day")            ; January 1
	(holiday-float 2 1 3 "Family Day")             ; Third Monday of February
	(holiday-easter-etc -2 "Good Friday")          ; Friday before Easter Sunday
	(holiday-float 5 1 -2 "Victoria Day")          ; Second to last Monday of May
        (holiday-canada-day)                           ; July 2 if July 1 is a Sunday, July 1 else
	(holiday-float 8 1 1 "B.C. Day")               ; First Monday of August
	(holiday-float 9 1 1 "Labour Day")             ; First Monday of September
	(holiday-float 10 1 2 "Thanksgiving")          ; Second Monday of October
	(holiday-fixed 11 11 "Remembrance Day")        ; November 11
	(holiday-fixed 12 25 "Christmas Day")))        ; December 25

(defun holiday-canada-day ()
  "Return July 2 if July 1 is a Sunday, July 1 else."
  (let ((d (calendar-day-of-week (list 7 1 displayed-year))))
    (cond ((= d 0)
	   (list (list (list 7 2 displayed-year)
		       "Canada Day")))
	  (t
	  (list (list (list 7 1 displayed-year)
		       "Canada Day"))))))
