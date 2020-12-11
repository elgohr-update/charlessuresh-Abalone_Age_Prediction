FROM continuumio/miniconda3

RUN conda install --quiet --yes \
    'ipykernel' \
    'matplotlib>=3.2.2' \
    'scikit-learn>=0.23.2' \
    'pandas>=1.1.3' \
    'requests>=2.24.0' \
    'graphviz' \
    'python-graphviz' \
    'altair>=4.1.0' \
    'jinja2' \
    'pip>=20' \
    'pandas-profiling>=1.4.3' \
    'seaborn>=0.11.0' \
    'docopt=0.6.2' \
    'psutil>=5.7.2' \
    'lightgbm>=3.*'
    
RUN pip install --quiet \
    'xgboost>=1.*' \
    'git+git://github.com/mgelbart/plot-classifier.git'

RUN apt-get install r-base r-base-dev -y 

RUN Rscript -e "install.packages('knitr')"

RUN Rscript -e "install.packages('reticulate')"

RUN Rscript -e "install.packages('rmarkdown')"