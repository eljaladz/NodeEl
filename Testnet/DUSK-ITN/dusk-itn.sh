#!/bin/bash

#Instalasi Rusk
echo "Installing Rusk.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

curl --proto '=https' --tlsv1.2 -sSfL https://github.com/dusk-network/node-installer/releases/download/v0.2.0/node-installer.sh | sudo sh

echo "Installation Complete!"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

#Konfigurasi Rusk
echo "Providing CONSENSUS KEY file.."

sleep 1

echo "Restoring your Dusk Wallet.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

rusk-wallet restore

echo "Wallet Restored!"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

echo "Exporting CONSENSUS KEY.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

rusk-wallet export -d /opt/dusk/conf -n consensus.keys

echo "CONSENSYS KEY exported!"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

echo "Setting up your DUSK CONSENSUS KEY PASS.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

sh /opt/dusk/bin/setup_consensus_pwd.sh

echo "Your DUSK CONSENSUS KEY PASS has been set"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

echo "Preparing to launch your node.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

service rusk start

echo "Syncing your node.."

sleep 3

echo "Wait till your node Synced, then stake your nDUSK"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

echo "Join us at https://t.me/nscryptoid"
sleep 1
echo "Follow me on X https://x.com/ejldzz"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

curl --silent https://raw.githubusercontent.com/Znomon/Dusk-ITN2-Node-Tool/main/node_height_checker_w_estimate.py | python3
