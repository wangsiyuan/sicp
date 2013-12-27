#!/usr/bin/env racket
#lang racket

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define + (lambda (m n f) (lambda (x) ((m f) ((n f) x)))))

(define * (lambda (m n f) (lambda (x) ((m (n f)) x))))
