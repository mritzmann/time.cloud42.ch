FROM --platform=linux/amd64 alpine:3.15

# install chrony
RUN apk add --no-cache chrony

# copy entrypoint
COPY entrypoint.sh /bin/entrypoint.sh

# copy tls certs
COPY fullchain.pem /etc/chrony/fullchain.pem
COPY privkey.pem /etc/chrony/privkey.pem

# copy chrony config
COPY chrony.conf /etc/chrony/chrony.conf

# fix permissions
RUN chmod +x /bin/entrypoint.sh \
  && chown chrony:chrony /etc/chrony/fullchain.pem \
  && chown chrony:chrony /etc/chrony/privkey.pem

# expose nts port
EXPOSE 4460/tcp

# run entrypoint
ENTRYPOINT [ "/bin/entrypoint.sh" ]