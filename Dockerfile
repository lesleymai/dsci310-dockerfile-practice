# Base Image
# Using the Jupyter R Notebook image as the base because it includes Jupyter Notebook and R.
# This specific tag corresponds to the version released on 2023-11-19.
FROM quay.io/jupyter/r-notebook:2023-11-19

# Package Installation
# Here, we're installing additional Python and R packages using conda.
RUN conda install --quiet --yes \
    'r-ggplot2=3.4.4' \
    'pandas=2.1.4' \
    'r-tidyverse=2.0.0' \
    && conda clean --all -f -y # Cleaning up unnecessary files to keep the image size down.
