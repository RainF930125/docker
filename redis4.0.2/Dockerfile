#redis version:4.0
FROM redis:4.0.2
MAINTAINER DingYing
#install make wget ruby-install ruby2.3
RUN apt-get update && apt-get install -y wget make && wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz && tar -xzvf ruby-install-0.6.1.tar.gz && cd ruby-install-0.6.1/ && make install && ruby-install ruby 2.3 && apt-get install -y dnsutils && apt-get install -y iputils-ping 
#set PATH for ruby2.3
ENV PATH $PATH:/opt/rubies/ruby-2.3.5/bin
#install redis and download redis-trib.rb
RUN gem install redis && cd /root && wget http://download.redis.io/redis-stable/src/redis-trib.rb && chmod +x redis-trib.rb
COPY redis.conf /etc/redis.conf
ENTRYPOINT ["redis-server", "/etc/redis.conf"]
