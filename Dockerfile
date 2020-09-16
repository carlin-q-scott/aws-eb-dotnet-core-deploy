FROM mcr.microsoft.com/dotnet/core/sdk:2.2

RUN apt-get -o Acquire::Max-FutureTime=86400 update
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential
RUN apt-get remove -y python
RUN apt-get -y autoremove
ENV LANG="en_US.UTF-8" LC_COLLATE="en_US.UTF-8"
RUN apt-get install -y python3-pip python3-setuptools
RUN pip3 install awsebcli --upgrade

RUN apt-get install -y zip jq
ENV PATH=$PATH:/root/.dotnet/tools
RUN dotnet tool install -g Amazon.ElasticBeanstalk.Tools

RUN apt-get remove -y build-essential apt-utils
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

RUN dotnet tool install -g --version 2.2 dotnet-ef
