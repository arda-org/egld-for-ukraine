source interactions/settings_testnet.sh

role="ESDTRoleNFTCreate"

owner_address_enc="0x$(erdpy wallet bech32 --decode $owner_address)"
role_enc="0x$(echo -n $role | xxd -p -u | tr -d '\n')"

erdpy --verbose contract call erd1qqqqqqqqqqqqqqqpqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqzllls8a5w6u \
  --keyfile="keyfile.json" \
  --passfile="passfile.txt" \
  --chain="T" \
  --proxy="https://testnet-gateway.elrond.com" \
  --recall-nonce \
  --function=setSpecialRole \
  --arguments $collection_id_enc $owner_address_enc $role_enc \
  --gas-limit=100000000 \
  --send
