all: draft_mud_operator_info.txt draft_mud_manu_life.txt

mud_lifecycle.pdf: mud_lifecycle.tex
	pdflatex -halt-on-error $< && pdflatex -halt-on-error $<

draft_mud_operator_info.txt: draft_mud_operator_info.ms
	groff -Tascii -tpe -ms $< > $@

draft_mud_manu_life.txt: draft_mud_manu_life.ms
	groff -Tascii -tpe -ms $< > $@
