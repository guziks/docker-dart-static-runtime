FROM debian:stable-slim
ONBUILD COPY --from=builder /usr/bin/dart /usr/bin/dart
ONBUILD COPY --from=builder /app/bin/main.snap /app/
ONBUILD ENTRYPOINT ["dart", "/app/main.snap"]
