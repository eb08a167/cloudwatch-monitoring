FROM alpine

WORKDIR /opt/cloudwatch

RUN set -x && \
    apk add --no-cache coreutils perl-datetime perl-lwp-protocol-https py3-psutil

RUN set -x && \
    wget -qO - https://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-1.2.2.zip | unzip -

COPY . .

ENTRYPOINT ["./monitoring"]
