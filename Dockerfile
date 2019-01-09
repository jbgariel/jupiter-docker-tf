FROM tensorflow/tensorflow:latest-py3 

COPY /requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt; \
    rm -r requirements.txt

RUN ["mkdir", "notebooks"]
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /

# Jupyter and Tensorboard ports
EXPOSE 8888 6006

# Store notebooks in this mounted directory
VOLUME /notebooks

CMD ["/run_jupyter.sh"]