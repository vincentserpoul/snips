FROM raspbian/stretch

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
    dirmngr apt-transport-https lsb-release unzip curl git \
    python-pip python3-venv python-dev python3-dev
RUN pip install virtualenv

COPY ./start.sh /home/start.sh

RUN bash -c 'echo "deb https://raspbian.snips.ai/$(lsb_release -cs) stable main" > /etc/apt/sources.list.d/snips.list'
RUN apt-key adv --keyserver gpg.mozilla.org --recv-keys D4F50CDCA10A2849
RUN apt-get update

RUN apt-get install -y \
    snips-analytics snips-asr snips-dialogue \
    snips-queries snips-tts snips-watch snips-hotword \
    snips-skill-server snips-template

WORKDIR /home

CMD /home/start.sh