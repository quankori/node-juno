# Edit variable DEAMON
export DAEMON_NAME=junod
export DAEMON_HOME=$HOME/.juno

# Create folder source
mkdir -p $DAEMON_HOME/cosmovisor/genesis/bin
mkdir -p $DAEMON_HOME/cosmovisor/upgrades

# Copy juno location to location source
cp home/$USER/go/bin/junod $DAEMON_HOME/cosmovisor/genesis/bin


# Copy services to system
cp $PWD/services/cosmovisor.service /etc/systemd/system/cosmovisor.service

echo "READY START"

# Start machine
sudo -S systemctl daemon-reload
sudo -S systemctl enable cosmovisor
sudo systemctl start cosmovisor

# Sync node
# Query via the RPC (default port: 26657)
curl http://localhost:26657/status | jq .result.sync_info.catching_up