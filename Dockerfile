FROM raspbian/stretch

RUN apt-get update
RUN apt-get install -y dirmngr apt-transport-https lsb-release
RUN bash -c 'echo "deb https://raspbian.snips.ai/$(lsb_release -cs) stable main" > /etc/apt/sources.list.d/snips.list'
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys D4F50CDCA10A2849
RUN apt-get update

# RUN apt-get install -y snips-platform-voice
# RUN apt-get install -y snips-template snips-skill-server

RUN apt-get install -y snips-analytics snips-asr snips-dialogue snips-hotword snips-queries snips-tts snips-watch

USER _snips

CMD snips-watch