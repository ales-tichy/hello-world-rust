FROM rust:latest AS build-stage
WORKDIR /app
COPY . .
RUN apt-get update
RUN apt-get -y install gcc-mingw-w64
RUN rustup target add x86_64-pc-windows-gnu
RUN cargo build --target x86_64-pc-windows-gnu --release
