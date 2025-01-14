# [matrix]
synapse [matrix] based on kubernetes cluster
Generate config :

docker run -d --name synapse \
  -v "$(pwd)/data:/data" \
  -e SYNAPSE_SERVER_NAME=matrix.<your.domain.com> \
  -e SYNAPSE_REPORT_STATS=yes \
  -p 8088:8088 \
  ghcr.io/element-hq/synapse:v1.121.1

extract secret keys from default config : python3 extract_secrets.py
