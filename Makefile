MARKDOWN_FILES := $(wildcard *.md)
PDF_FILES := $(MARKDOWN_FILES:.md=.pdf)

.PHONY: pdfs clean
pdfs: $(PDF_FILES)

clean:
	rm -f $(PDF_FILES) *~ \#*\# .\#*

%.pdf: %.md bin/md2pdf
	bin/md2pdf --no-display $<
