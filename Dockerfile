FROM python:3.6-alpine

COPY ${PWD}/ /mkdocs/

RUN pip install mkdocs=="1.1.2"
RUN pip install mkdocs-awesome-pages-plugin=="2.2.1" 
RUN pip install mkdocs-material=="4.6.2"
RUN pip install pymdown-extensions=="8.1.1"

WORKDIR /mkdocs

ENTRYPOINT ["mkdocs"]

EXPOSE 8000

CMD ["serve", "--dev-addr=0.0.0.0:8000"]