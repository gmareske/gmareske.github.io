.PHONY: all publish

all: publish

publish: publish.el posts css
	@echo "Publishing..."
	emacs --batch --load publish.el --funcall org-publish-all

clean:
	@echo "Cleaning..."
	@rm -rvf *.elc
	@rm -rvf blog
