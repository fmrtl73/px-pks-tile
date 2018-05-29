FROM alpine

ADD pks /usr/local/bin/pks
ADD deploy-px.sh .
RUN apk add --no-cache curl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
CMD /bin/sh deploy-px.sh
