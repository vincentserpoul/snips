FROM vincentserpoul/snips-core:v0.0.1

COPY ./snips.toml /etc/snips.toml

## Install your assistant
COPY ./assistant.zip /home/assistant.zip
RUN rm -rf /usr/share/snips/assistant && \
    unzip /home/assistant.zip -d /usr/share/snips/

RUN snips-skill-server install_skills
## Replace all MQTT localhost:1883 by mosquitto:1883
RUN find /var/lib/snips/skills -type f -exec sed -i 's/localhost:1883/mosquitto:1883/g' {} +

WORKDIR /home