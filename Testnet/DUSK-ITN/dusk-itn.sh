#!/bin/bash

#Instalasi Rusk
echo "Installing Rusk.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

curl --proto '=https' --tlsv1.2 -sSfL https://github.com/dusk-network/itn-installer/releases/download/v0.1.9/itn-installer.sh | sudo sh

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

sleep 3 #Jeda waktu

echo "Exporting CONSENSUS KEY.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

rusk-wallet export -d /opt/dusk/conf -n consensus.keys

echo "CONSENSYS KEY exported!"

sleep 3

echo "Set your DUSK CONSENSUS KEY PASS.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

sh /opt/dusk/bin/setup_consensus_pwd.sh

echo "Your DUSK CONSENSUS KEY PASS has been set"

sleep 3

echo "Preparing to launch your node.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

service rusk start

sleep 3 #Jeda waktu

echo "Syncing your node.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

grep "block accepted" /var/log/rusk.log

sleep 15 #Jeda waktu sinkronisasi

echo "Completed!"

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

#Staking tDUSK
echo "Your wallet has 1100 tDUSK, enter the amount of tDUSK to stake at least 1000 tDUSK and save some of tDUSK for the gas fee in your wallet."
sleep 3
read -p "Enter the amount of tDUSK you want to stake = " stakeAmount

rusk-wallet stake --amt "$stakeAmount"

echo "$stakeAmount tDUSK staked!"

sleep 3 #Jeda waktu

#Mendapatkan informasi staking
echo "Getting your staking information.."

echo "."
sleep 1

echo "."
sleep 1

echo "."
sleep 1

rusk-wallet stake-info

echo "Done!"

sleep 3 #Jeda waktu

echo "To see if your node is participating in consensus and creating blocks, use command below:"
echo " tail -F /var/log/rusk.log | grep "execute_state_transition""
echo "FYI, that this can take a while, given that your stake needs at least 2 epochs, or 4320 blocks, to mature. Your stake, relative to the total stake, also plays a factor. "

sleep 1 #Jeda waktu

echo "Join us at https://t.me/nscryptoid"
echo "Follow me on X https://x.com/ejldzz"
