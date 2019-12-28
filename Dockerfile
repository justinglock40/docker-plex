FROM scratch

HEALTHCHECK --interval=5s --timeout=2s --retries=20 CMD curl --silent --show-error --fail 'http://localhost:32400/identity' >/dev/null || exit 1

# copy local files
COPY root/ /
