all: pdf

tidy:
	tidy -m -utf8 -asxhtml -wrap 220 -indent -clean --doctype strict --indent-spaces 2 --indent-cdata yes --indent-spaces 8 --tidy-mark no resume.html
	sed -i "s/        /\t/g" resume.html

pdf: tidy
	wkhtmltopdf -g --margin-bottom 6mm --margin-top 10mm --margin-left 10mm --margin-right 10mm resume.html resume.pdf
