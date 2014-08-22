FROM frvi/ruby

RUN gem install --no-rdoc --no-ri asciidoctor
RUN mkdir /asciidoc

WORKDIR /asciidoc
VOLUME /asciidoc

ENTRYPOINT ["/usr/local/bin/asciidoctor"]
CMD ["--help"]
