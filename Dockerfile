# FROM mcr.microsoft.com/devcontainers/universal:linux
FROM mcr.microsoft.com/devcontainers/javascript-node 
WORKDIR /home/node
RUN apt update && \
    apt upgrade -y && \
    apt install -y python3 python3.11-venv pip \
    # Cypress reqs: https://docs.cypress.io/guides/continuous-integration/introduction#Dependencies
    libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libnss3 libxss1 libasound2 libxtst6 xauth xvfb
# COPY . .
# RUN chmod -R 775 .
ENV FOOTBALL_DATA_API_KEY="abcdef"
RUN echo ${FOOTBALL_DATA_API_KEY}
# RUN make install test
EXPOSE 3010 5010 5020 5030
CMD [ "bash" ]
