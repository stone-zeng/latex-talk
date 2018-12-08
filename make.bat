@echo off

set JOBNAME=latex-talk
set MAIN=latex-talk.tex

if "%1"=="handout" set JOBNAME=%JOBNAME%-handout
echo %% DO NOT MODIFY THIS FILE!>%JOBNAME%.make.tex
if "%1"=="handout" echo \def\HANDOUT{}>>%JOBNAME%.make.tex
echo \input{%MAIN%}>>%JOBNAME%.make.tex

latexmk -jobname=%JOBNAME% %JOBNAME%.make.tex

del %JOBNAME%.make.tex
