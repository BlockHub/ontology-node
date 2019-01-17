# ontology-node

A simple container to run an ontology node.

Commands:


## validate if the container has been properly configured

docker run \
    --mount type=bind,source=$(pwd)/wallet.dat,target=/conf/wallet.dat
    kaiserkarel/ontology-node:latest \
    validate


## run the node in sync mode

docker run \
    --mount type=bind,source=$(pwd)/wallet.dat,target=/conf/wallet.dat \
    -e ONT_PASSPHRASE="mysecret" \
    kaiserkarel/ontology-node:latest \
    sync


## run the node in consensus mode

docker run \
    --mount type=bind,source=$(pwd)/wallet.dat,target=/conf/wallet.dat \
    -e ONT_PASSPHRASE="mysecret" \
    kaiserkarel/ontology-node:latest \
    consensus
