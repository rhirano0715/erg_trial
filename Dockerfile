FROM rust:latest

WORKDIR /workspace

# RUN apt-get update && \
#     apt-get -y install git && \
#     apt-get clean && \
#     rm -rf /var/lib/apt/lists/* && \
#     rustup component add rls rust-analysis rust-src rustfmt clippy && \
#     cargo install cargo-edit cargo-watch

RUN apt-get update && \
    apt-get -y install git && \
    apt-get -y install build-essential && \
    apt-get clean && \
    rustup component add rls rust-analysis rust-src rustfmt clippy && \
    cargo install cargo-edit cargo-watch && \
    cargo install erg --features full
