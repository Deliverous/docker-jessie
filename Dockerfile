FROM deliverous/wheezy
RUN sed -e 's/wheezy/jessie/g' -i /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get dist-upgrade -y && apt-get clean
