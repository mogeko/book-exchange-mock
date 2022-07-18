FROM mockoon/cli:2.0.0

WORKDIR /workspace

COPY mock.json /data/mock.json

EXPOSE 3000

ENTRYPOINT ["mockoon-cli", "start", "--hostname", "0.0.0.0", "--daemon-off"]

CMD [ "--data", "/data/mock.json" ]
