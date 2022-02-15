FROM fluent/fluentd:v1.14-debian
USER root
RUN /usr/local/bin/gem install fluent-plugin-rewrite-tag-filter
USER fluent
ADD fluent.conf /fluentd/etc/fluent.conf
