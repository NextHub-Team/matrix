sudo chown $USER:$USER . 
sudo mkdir -p ./data/logs
sudo chown -R 1000:1000 ./data/logs
sudo chmod -R 755 ./data/logs
touch ./data/logs/homeserver.log
sudo chmod -R 755 ./data/logs/homeserver.log
sudo chown -R 1000:1000 ./data 
sudo mkdir -p /data/media_store

# docker run -it --rm \
#     -v ./data:/data \
#     -e SYNAPSE_SERVER_NAME=synapse.next-hub.app \
#     -e SYNAPSE_REPORT_STATS=yes \
#     -e SYNAPSE_HTTP_PORT=8008 \
#     -e SYNAPSE_CONFIG_PATH=/.config/homeserver.yaml \
#     -e SYNAPSE_DATA_DIR=/data \
#     -e SYNAPSE_LOG_LEVEL=DEBUG \
#     ghcr.io/element-hq/synapse:latest generate \
#     --no-interactive \
#     --generate-keys

# python3 extract_secrets.py
