#Set the base repo URL for the testnet & retrieve peers
CHAIN_REPO="https://raw.githubusercontent.com/CosmosContracts/testnets/main/$1" && \
export PEERS="$(curl -s "$CHAIN_REPO/persistent_peers.txt")"

# check it worked
echo $PEERS
# note testnet denom
sed -i.bak -e "s/^minimum-gas-prices *=.*/minimum-gas-prices = \"0.0025ujunox\"/" ~/.juno/config/app.toml

junod init $2 --chain-id $1

curl https://raw.githubusercontent.com/CosmosContracts/testnets/main/$1/genesis.json > ~/.juno/config/genesis.json

sed -i.bak -e "s/^persistent_peers *=.*/persistent_peers = \"$PEERS\"/" ~/.juno/config/config.toml

