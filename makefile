# makefile for profiling the builds of various websites using different versions of Jekyll and Just hte Docs.

# The directory for the profiling results:
DIR := collections/_tests/profiles

# The websites to be built:
SITE := \
	just-the-docs-tests \
	endoflife.date \
	jekyll-doc-tsl2 \
	machinetranslate.org

# The versions of Jekyll to use:
JEKYLL := \
	3.9.3 \
	4.3.2

# The versions of Just the Docs to use:
JTD := \
	just-the-docs/just-the-docs@v0.3.3 \
	just-the-docs/just-the-docs@v0.4.2 \
	just-the-docs/just-the-docs@v0.5.0 \
	just-the-docs/just-the-docs@v0.5.1 \
	just-the-docs/just-the-docs@v0.5.2 \
	just-the-docs/just-the-docs@v0.5.4 \
	pdmosses/just-the-docs@nav-fix

.PHONY: help
help:
	@echo Run \"make dirs\" to create/update directories in $(DIR) for profiling these websites:
	@for site in $(SITE); do echo \\t$$site; done
	@echo using these versions of Jekyll:
	@for jekyll in $(JEKYLL); do echo \\t$$jekyll; done
	@echo and with these versions of Just the Docs:
	@for jtd in  $(JTD); do echo \\t$$jtd; done
	@echo Then run \"make profiles\" to create/update the profiling results using Jekyll.
	@echo WARNING: Creating some of the profiles for the larger websites takes almost an hour!
	@echo See https://just-the-docs.github.io/just-the-docs-tests/tests/profiles/index/ for further details.

.PHONY: all
all:
	@echo Run \"make dirs\" then \"make profiles\".

.PHONY: dirs
dirs:
	@echo Creating any missing directories; \
	for s in $(SITE); do \
	    if test -d "../$$s"; then \
	        mkdir -p $(DIR)/$$s; \
	        pushd $(DIR)/$$s >/dev/null 2>&1; \
	        mkdir -p $(JEKYLL); \
	        for j in $(JEKYLL); do \
		    cd $$j; \
		    mkdir -p $(subst just-the-docs@,,$(JTD)); \
		    cd ..; \
	        done; \
	        popd >/dev/null 2>&1; \
	    else \
	        echo "$$s" not created because "../$$s" not found; \
	    fi \
	done

# .../site/jekyll/jtd-org/jtd-ref/profile.txt
PROFILES = $(patsubst %,%profile.txt,$(wildcard $(DIR)/*/*/*/*/))

.PHONY: profiles
profiles: dirs $(PROFILES)

# Parent directory: $(call updir,.../*) = ...
updir = $(patsubst %/,%,$(dir $(1)))

# variable for use in recipes:
tmpfile = /tmp/$(subst /,_,$(subst _includes/profiles/,,$(@D)))

$(PROFILES):
	@echo $(subst _includes/profiles/,Profiling ,$(@D))
	@cd ../$(notdir $(call updir,$(call updir,$(call updir,$(@D))))); \
	test -e Gemfile.lock && rm -f Gemfile.lock; \
	export JTD_REF=$(notdir $(@D)); \
	export JTD_ORG=$(notdir $(call updir,$(@D))); \
	export JEKYLL_VERSION=$(notdir $(call updir,$(call updir,$(@D)))); \
	bundle install > $(tmpfile)_install.log; \
	bundle exec jekyll clean > $(tmpfile)_clean.log; \
	bundle exec jekyll build --profile > ../just-the-docs-tests/$@ 2> $(tmpfile).log
