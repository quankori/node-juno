# Juno Testnet setup

Setup local Juno network

## Requirement

- Golang

```bash
wget https://golang.org/dl/go1.18.2.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
```

```bash
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
```

- Junod CLI

```bash
# Pull source
git clone https://github.com/CosmosContracts/juno
cd juno
git fetch
git checkout <version-tag>

# Install
make install

# Check version
junod version
```

- Cosmovisor

```bash
go get github.com/cosmos/cosmos-sdk/cosmovisor/cmd/cosmovisor

# OR

go mod download

# Confirm after install
which cosmovisor
```

```bash
# Setup cosmosvisor
make -B cosmovisor
```
