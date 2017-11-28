FROM debian:jessie

ARG APT_MIRROR=deb.debian.org

RUN apt-get update && apt-get install -y \
    cmake \
    protobuf-compiler \
    protobuf-c-compiler \
    python \
    python-pip \
    python-dev

RUN pip install  \
    aniso8601==1.1.0 \
    BeautifulSoup==3.2.1 \
    ecdsa==0.13 \
    Flask==0.10.1 \
    Flask-RESTful==0.3.4 \
    google-apputils==0.4.2 \
    itsdangerous==0.24 \
    Jinja2==2.8 \
    junit-xml>=1.3 \
    kazoo==2.2.1 \
    MarkupSafe==0.9 \
    mechanize==0.2.5 \
    netaddr==0.7.18 \
    paramiko==1.16.0 \
    protobuf==3.1.0 \
    pycrypto==2.6.1 \
    pydruid==0.2.3 \
    pymongo==2.9.2 \
    python-dateutil==2.4.2 \
    python-gflags==2.0 \
    pytz==2015.7 \
    PyYAML==3.11 \
    requests==2.9.1 \
    requests-toolbelt==0.7.0 \
    scapy==2.3.1 \
    six==1.10.0 \
    subprocess32>=3.2.6 \
    Werkzeug==0.9 \
    wsgiref==0.1.2 \
    httpsig==1.1.2 \
    xmlrunner==1.7.7

ENV PYTHONPATH=/work/src/TetrationAnalytics/tetration:/work/src/TetrationAnalytics/tetration/test_framework/src/e2e/proto

WORKDIR /work/src/TetrationAnalytics/tetration/test_framework/src/e2e