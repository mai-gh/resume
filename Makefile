pdf_open=xdg-open
html_open=xdg-open
htmltopdf=wkhtmltopdf

view_pdf: mai.pdf
	$(pdf_open) $^

view_html: index.html
	$(html_open) $^

mai.pdf: index.html
	$(htmltopdf) $^ $@

.PHONY: view_pdf view_html
