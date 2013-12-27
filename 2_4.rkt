#!/usr/bin/env racket
#lang racket

(define (cons x y)
	(lambda (m) (m x y))
	)
(define car (lambda (f)
		(f (lambda (x y) x))
		)
	) 
(define cdr (lambda (f)
		(f (lambda (x y) y))
		)
	)

(car (cons 2 3))
(cdr (cons 2 3))
(cdr (cons 2 '(2 3)))
