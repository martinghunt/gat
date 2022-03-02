FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=/bioinf-tools/:$PATH
ENV LANG=C.UTF-8
ENV LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

ARG GAT_DIR=/gat
RUN mkdir -p $GAT_DIR/.ci/
COPY .ci/install_dependencies.sh $GAT_DIR/.ci/install_dependencies.sh
RUN $GAT_DIR/.ci/install_dependencies.sh /bioinf-tools

COPY . $GAT_DIR
RUN cd $GAT_DIR \
  && pip3 install tox \
  && cd $GAT_DIR \
  && tox \
  && pip3 install .

CMD gat
