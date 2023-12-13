---
## Front matter
title: "Отчёт по Лабораторной работе №10"
subtitle: "Дисцилина: Архитектура компьютера"
author: "Гозенко А.С."

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: false # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобрестинавыки работы с файлами в ассемблере NASM и научиться управлять правами доступа к файлам.

# Выполнение лабораторной работы

Создам рабочую директорию и файл(рис. @fig:001).

![Создание директории](image/1.png){#fig:001 width=70%}

Запишу в файл текст программы из листинга(рис. @fig:002).

![Код программы](image/2.png){#fig:002 width=70%}

![Работа программы](image/3.png){#fig:003 width=70%}

Запрещу исполнение для файла lab10-1(рис. @fig:004).

![Как и ожидалось, мы не смогли исполнить этот файл](image/4.png){#fig:004 width=70%}

Когда мы разрешим исполнение файла с расширением .asm, и собственно исполним его, то мы увидим множество ошибок, ведь этот файл не предназначен для такого использования.(рис. @fig:005).

![Ошибки исполнения файла](image/5.png){#fig:005 width=70%}

Зададим файлу права использования как в варианте 17 и проверим, что получилось(рис. @fig:006).

![Права доступа к файлу r-x -wx rw-](image/6.png){#fig:006 width=70%}

# Выполнение заданий для самостоятельной работы

Напишу программу, удовлетворяющую условию(рис. @fig:007).

![Часть текста программы](image/7.png){#fig:007 width=70%}

![Работа полученной программы](image/8.png){#fig:008 width=70%}



# Выводы

Были приобретены навыки по работе с файлами в NASM и правами доступа к файлам.
