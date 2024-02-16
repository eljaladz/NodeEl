#!/bin/bash

echo "Establishing the host mapping path..."
nodePath="/var/lib/node_bevm_test_storage"
mkdir -p "$nodePath"

echo "Fetching the Docker image..."
sudo docker pull btclayer2/bevm:v0.1.1

read -p "Enter your EVM address as the node name: " nodeName

echo "Running a Docker container..."
yourContainer="$nodeName-bevm-testnet"
sudo docker run -d -p 30333:30333 -v "$nodePath:/root/.local/share/bevm" --name "$yourContainer" btclayer2/bevm:v0.1.1 bevm \
  "--chain=testnet" \
  "--name=$nodeName" \
  "--pruning=archive" \
  --telemetry-url "wss://telemetry.bevm.io/submit 0"

echo "Congratulations, '$yourContainer' node is running."
sleep 3
echo "Check your node state at https://telemetry.bevm.io"
echo "Join us at https://t.me/nscryptoid"
echo "Follow me on X https://x.com/ejldzz"
sleep 3 # checking docker logs

echo "Checking '$yourContainer' node status:"
sleep 3 

echo "Wait a sec..."
sleep 10  # Checking node status

sudo docker logs -f "$yourContainer"
