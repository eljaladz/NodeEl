#!/bin/bash

#Instalasi Rusk
echo "Installing Rusk.."
curl --proto '=https' --tlsv1.2 -sSfL https://github.com/dusk-network/itn-installer/releases/download/v0.1.0/itn-installer.sh | sudo sh

echo "Installation Complete!"

sleep 3 #Jeda waktu

#Konfigurasi Rusk
echo "Providing CONSENSUS KEY file.."

sleep 3 #Jeda waktu

echo "Restoring your Dusk Wallet.."
rusk-wallet restore

echo "Wallet Restored!"

sleep 3 #Jeda waktu

echo "Exporting CONSENSUS KEY.."
rusk-wallet export -d /opt/dusk/conf -n consensus.keys

echo "CONSENSYS KEY exported!"

sleep 3 #Jeda waktu

echo "Set your DUSK CONSENSUS KEY PASS.."
sh /opt/dusk/bin/setup_consensus_pwd.sh

echo "Your DUSK CONSENSUS KEY PASS has been set"

sleep 3 #Jeda waktu

echo "Preparing to launch your node.."
service rusk start

sleep 3 #Jeda waktu

echo "Syncing yopur node.."
grep "block accepted" /var/log/rusk.log

sleep 15 #Jeda waktu sinkronisasi

echo "Completed!"

sleep 5 #Jeda waktu ke step selanjutnya

#Staking tDUSK
echo "Your wallet has 1100 tDUSK, enter the amount of tDUSK to stake at least 1000 tDUSK and save some of tDUSK for the gas fee in your wallet."
read -p "Enter the amount of tDUSK you want to stake = " stkAmt

rusk-wallet stake --amt "$stakeAmt"

echo "'$stkAmt' tDUSK staked!"

sleep 3 #Jeda waktu

echo "Getting your staking information.."
rusk-wallet stake-info

echo "Done!"




tail -F /var/log/rusk.log | grep "execute_state_transition"
