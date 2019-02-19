# to build:
#   docker build -t darvin/leon .
# to pull:
#   docker pull darvin/leon
# to run:
#   docker run -p 1337:1337 -p 8889:4242 -it darvin/leon
#   docker run -p 1337:1337 -p 8889:4242 -d darvin/leon
# go to:
#   http://localhost:1337/


FROM jairewiz/node10-python3.6
ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# Install system packages
RUN apt update -y \
  && apt install -y \
    ca-certificates \
    git

ENV app_root /leon
WORKDIR ${app_root}

ADD . $app_root   
COPY .env.docker  $app_root/.env    
COPY packages/leon/config/config.sample.json $app_root/packages/leon/config/config.json

RUN npm install --unsafe-perm
RUN npm run build
RUN npm run setup:offline-tts
RUN npm run setup:offline-stt

ENV PIPENV_VENV_IN_PROJECT true
RUN cd bridges/python/ ; pipenv install  ; cd ../..

RUN npm run check

EXPOSE 4242
EXPOSE 1337
CMD [ "npm", "start" ]