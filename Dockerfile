FROM raspbian/stretch

RUN apt-get update
RUN apt-get install -y dirmngr apt-transport-https lsb-release
RUN bash -c 'echo "deb https://raspbian.snips.ai/$(lsb_release -cs) stable main" > /etc/apt/sources.list.d/snips.list'
RUN apt-key adv --keyserver gpg.mozilla.org --recv-keys D4F50CDCA10A2849
RUN apt-get update

RUN apt-get install -y \
    snips-analytics snips-asr snips-dialogue \
    snips-hotword snips-queries snips-tts snips-watch \
    snips-platform-demo

COPY ./snips.toml /etc/snips.toml

USER _snips

CMD snips-watch -vvv