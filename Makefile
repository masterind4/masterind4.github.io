

marp_command = marp --pdf --allow-local-files

all: crypto secu tp_crypto

crypto: Cours.pdf
tp_crypto: TP.pdf
secu: Securite.pdf

Cours.pdf: cours/Cours.md
	${marp_command} cours/Cours.md -o Cours.pdf

TP.pdf: tp/TP.md
	${marp_command} tp/TP.md -o TP.pdf

Securite.pdf: td_securite/cours/Securite.md
	${marp_command} td_securite/cours/Securite.md -o Securite.pdf