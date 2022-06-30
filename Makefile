testnet_chain_id := uni-3
mainnet_chain_id := juno-1
moniker_name := K0r1
key_name := k0r1-key

cosmovisor:
	./cosmovisor.sh

keys:
	./setup-key.sh ${key_name}
	
testnet: 
	./testnet.sh ${testnet_chain_id} ${moniker_name} 

mainnet: 
	./mainnet.sh ${mainnet_chain_id} ${moniker_name} 