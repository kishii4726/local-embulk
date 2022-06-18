FROM openjdk:8

# embulk version
ENV EMBULK_VERSION 0.9.24
ENV TZ Asia/Tokyo

# embulk
RUN curl -o /usr/local/bin/embulk --create-dirs -L "https://github.com/embulk/embulk/releases/download/v${EMBULK_VERSION}/embulk-${EMBULK_VERSION}.jar" && \
    chmod +x /usr/local/bin/embulk

# install library
RUN embulk gem install embulk-input-mysql embulk-output-mysql

WORKDIR /embulk
