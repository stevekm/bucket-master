SHELL:=/bin/bash
UNAME:=$(shell uname)
PATH:=$(CURDIR)/conda/bin:$(PATH)
unexport PYTHONPATH
unexport PYTHONHOME

none:


# ~~~~~ SETUP CONDA ~~~~~ #
ifeq ($(UNAME), Darwin)
CONDASH:=Miniconda3-4.5.4-MacOSX-x86_64.sh
endif

ifeq ($(UNAME), Linux)
CONDASH:=Miniconda3-4.5.4-Linux-x86_64.sh
endif

CONDAURL:=https://repo.continuum.io/miniconda/$(CONDASH)
CONDADIR:=$(shell python -c 'import os; print(os.path.realpath("conda"))')
CONDA_ACTIVATE:=$(CONDADIR)/bin/activate
conda:
	wget "$(CONDAURL)" && \
	bash "$(CONDASH)" -b -p conda && \
	rm -f "$(CONDASH)" && \
	unset PYTHONHOME; unset PYTHONPATH && \
	source "$(CONDA_ACTIVATE)" && \
	conda config --add channels conda-forge

conda-install: conda
	conda install -y -c conda-forge awscli=1.16.29

conda-search:
	conda search -c conda-forge awscli
