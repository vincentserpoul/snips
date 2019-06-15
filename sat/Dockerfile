FROM raspbian/stretch

RUN apt-get update
RUN apt-get install -y dirmngr apt-transport-https lsb-release
RUN bash -c 'echo "deb https://raspbian.snips.ai/$(lsb_release -cs) stable main" > /etc/apt/sources.list.d/snips.list'
RUN apt-key adv --keyserver gpg.mozilla.org --recv-keys D4F50CDCA10A2849
RUN apt-get update

RUN apt-get install -y snips-audio-server snips-watch
## Install driver for seeed voicecard
RUN git clone https://github.com/respeaker/seeed-voicecard
WORKDIR /home/seeed-voicecard
RUN ./install.sh

COPY ./snips.toml /etc/snips.toml

USER _snips

CMD snips-watch -vvv