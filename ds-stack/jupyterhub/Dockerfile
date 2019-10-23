FROM ds/base
RUN yum -y install nodejs && \
    npm install -g configurable-http-proxy
ADD requirements.txt
RUN pip install --no-cache-dir -U notebook jupyterhub jupyterlab virtualenv && \
    jupyter serverextension enable --py jupyterlab --sys-prefix && \
    pip install --no-cache-dir -U -r requirements.txt && \
    python3 -m spacy download en_core_web_md && \
    python3 -c "import nltk; nltk.download('popular')"

ADD bin/start-jupyter.sh .
RUN chmod +x start-jupyter.sh
CMD ["./start-jupyter.sh"]

EXPOSE 8000
