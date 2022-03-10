source interactions/settings_testnet.sh

erdpy --verbose contract call $sc_address \
  --keyfile="keyfile.json" \
  --passfile="passfile.txt" \
  --chain="T" \
  --proxy="https://testnet-gateway.elrond.com" \
  --recall-nonce \
  --function=initMinting \
  --arguments \
      $collection_id_enc \
      100000000000000000 \
      500000000000000000 \
      1000000000000000000 \
      2000000000000000000 \
      3000000000000000000 \
      5000000000000000000 \
      7000000000000000000 \
      10000000000000000000 \
      20000000000000000000 \
      200000000000000000000 \
  --gas-limit=10000000 \
  --send
