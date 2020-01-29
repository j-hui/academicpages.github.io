PHONY += default
default: help

PHONY += i install
i install:
	bundle clean
	bundle install

PHONY += ls liveserve
ls liveserve:
	bundle exec jekyll liveserve

PHONY += s serve
s serve:
	bundle exec jekyll serve

PHONY += help
help:
	@echo "This is a make file for the lazy."
	@echo "Available targets: $(PHONY)"

.PHONY: $(PHONY)
