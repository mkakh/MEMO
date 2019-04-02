#!/usr/bin/perl
$pdf_mode = 3;
$latex = 'uplatex -halt-on-error';
$latex_silent = 'uplatex -halt-on-error -interaction=batchmode';
$bibtex = 'upbibtex';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'mendex %O -o %D %S';
$pdf_update_method = 2;
$pdf_previewer = 'start mupdf';
$new_viewer_always = 0;
$pdf_update_signal = 'SIGHUP';
@generated_exts = (@generated_exts, 'dvi');
