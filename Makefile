testnet_chain_id := uni-3
mainnet_chain_id := juno-1
moniker_name := K0r1

testnet: 
	./testnet.sh ${testnet_chain_id} ${moniker_name} 

mainnet: 
	./mainnet.sh ${mainnet_chain_id} ${moniker_name} 