FROM mono:latest
RUN mkdir /opt/app
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs \
    build-essential && \
    node --version && \ 
    npm --version
RUN node -v
COPY ./ /opt/app
RUN cd /opt/app && npm install
CMD ["node", "/opt/app/index.js"]