FROM fluent/fluentd:v1.14-debian
USER root
RUN /usr/local/bin/gem install fluent-plugin-rewrite-tag-filter
# Create mount point for logs volume
RUN mkdir /var/log/umbc-idp && chown fluent /var/log/umbc-idp
USER fluent
ADD fluent.conf /fluentd/etc/fluent.conf
