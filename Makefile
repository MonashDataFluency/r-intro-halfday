
RMDS=index.Rmd \
     topics/start.Rmd \
     topics/data_frames.Rmd \
     topics/ggplot.Rmd

HTMLS=$(patsubst %.Rmd,%.html,$(RMDS))

all : $(HTMLS)

%.html : %.Rmd
	Rscript -e 'rmarkdown::render("$<", "all")'

clean :
	rm -f $(HTMLS)
