FROM frvi/ruby

MAINTAINER Fredrik Vihlborg <fredrik.wihlborg@gmail.com>

RUN gem install --no-rdoc --no-ri asciidoctor
RUN mkdir /asciidoc

WORKDIR /asciidoc
VOLUME /asciidoc

ENTRYPOINT ["/usr/local/bin/asciidoctor"]
CMD ["--help"]
