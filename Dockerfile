FROM frvi/ruby

RUN gem install --no-rdoc --no-ri asciidoctor

ENTRYPOINT ["/usr/local/bin/asciidoctor"]
CMD ["--help"]
