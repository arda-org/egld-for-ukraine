source interactions/settings_testnet.sh

mxpy --verbose contract upgrade $sc_address \
  --keyfile="keyfile.json" \
  --passfile="passfile.txt" \
  --chain="1" \
  --proxy="https://gateway.multiversx.com" \
  --recall-nonce \
  --bytecode="sc-donation/output/donation.wasm" \
  --arguments 100000000000000000 3 \
  --gas-limit=50000000 \
  --send
