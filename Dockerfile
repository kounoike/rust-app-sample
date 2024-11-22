FROM debian:bookworm-slim
ENTRYPOINT ["/rust-app-sample"]
COPY rust-app-sample /
