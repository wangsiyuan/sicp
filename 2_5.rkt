#!/usr/bin/env racket
#lang racket

(define cons (lambda (x y)
		(* (expt 2 x)
			(expt 3 y)
		)
	)
	)

(define car (lambda (x)
		(if (equal? x 1)
			0
			(if (equal? (remainder x 2) 0)
				(+ 1 (car (/ x 2)))
				0
			)
		)
	)
	)

(define cdr (lambda (x)
		(if (equal? x 1)
			0
			(if (equal? (remainder x 3) 0)
				(+ 1 (cdr (/ x 3)))
				0
			)
		)
	)
	)

(car (cons 4 5))
(cdr (cons 4 9))
