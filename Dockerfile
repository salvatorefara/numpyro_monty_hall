FROM jupyter/minimal-notebook

RUN rm -r ./work

WORKDIR /project

COPY . ./project

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]

