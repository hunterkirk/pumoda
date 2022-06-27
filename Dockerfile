FROM ruby:3.1.2-slim-bullseye as base
COPY Gemfile Gemfile.lock /micropuma/
WORKDIR /micropuma/
ENV GEM_HOME=/micropuma/gems/
RUN apt-get update -y -q && \
apt-get -y -q --no-install-recommends install build-essential=12.9 && \
bundle install
COPY config.ru puma.config /micropuma/

FROM ruby:3.1.2-slim-bullseye as final
COPY --from=base /micropuma/ /micropuma/
WORKDIR /micropuma/
ENV RACK_ENV=production
ENV GEM_HOME=/micropuma/gems/
ENTRYPOINT ["bundle", "exec", "puma", "-C", "puma.config"]