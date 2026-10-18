# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile update-po html-en html-all pdf-en latexpdf-en

update-po:
	./update_language.sh

html-en:
	@$(SPHINXBUILD) -b html -D language=en "$(SOURCEDIR)" "$(BUILDDIR)/html/en" $(SPHINXOPTS) $(O)

html-all: html html-en

# English PDF (requires a local TeX toolchain, e.g. MacTeX / TeX Live)
pdf-en latexpdf-en:
	@$(SPHINXBUILD) -b latex -D language=en "$(SOURCEDIR)" "$(BUILDDIR)/latex/en" $(SPHINXOPTS) $(O)
	@$(MAKE) -C "$(BUILDDIR)/latex/en"
	@echo "English PDF: $(BUILDDIR)/latex/en/*.pdf"

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
