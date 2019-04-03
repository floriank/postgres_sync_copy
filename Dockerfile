FROM bitwalker/alpine-elixir:1.8.1

RUN mkdir -p /opt/app && \
    chmod -R 777 /opt/app

ENV MIX_HOME=/opt/mix \
    HEX_HOME=/opt/hex \
    HOME=/opt/app

# Install Hex+Rebar
RUN mix local.hex --force && \
    mix local.rebar --force

WORKDIR /opt/app

ONBUILD COPY . .

CMD ["mix", "do", "deps.get"]
