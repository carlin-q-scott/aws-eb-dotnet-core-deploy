FROM mcr.microsoft.com/dotnet/core/sdk

RUN apt-get -o Acquire::Max-FutureTime=86400 update
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential
RUN apt-get remove -y python
RUN apt-get -y autoremove
RUN apt-get install -y python3-pip
RUN pip3 install awsebcli --upgrade

RUN apt-get install -y zip jq
ENV PATH=$PATH:/root/.dotnet/tools
RUN dotnet tool install -g Amazon.ElasticBeanstalk.Tools

RUN apt-get remove -y build-essential apt-utils
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

RUN dotnet tool install -g dotnet-ef
