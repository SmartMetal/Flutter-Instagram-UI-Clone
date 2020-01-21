FROM gitpod/workspace-full:latest

ENV ANDROID_HOME=/workspace/android-sdk \
    FLUTTER_ROOT=/workspace/flutter \
    FLUTTER_HOME=/workspace/flutter
    
USER root

RUN apt-get update && \
    apt-get -y install build-essential librkrb5-dev gcc gradle openjdk-8-jdk && \ 
    apt-clean && \
    apt-get -y autoremove
