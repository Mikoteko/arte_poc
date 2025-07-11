FROM jupyter/base-notebook:latest

USER root
RUN pip install pandas

USER jovyan
