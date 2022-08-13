FROM jupyter/minimal-notebook

USER root
RUN apt-get update && apt-get -y install graphviz

RUN rm -r ./work

COPY ./requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /project
COPY . ./project

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root"]

