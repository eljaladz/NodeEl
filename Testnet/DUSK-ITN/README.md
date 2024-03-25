<h1> DUSK Nocturne Node </h1>

DUSK Nocturne Node Installation Script by N.S Crypto Community 

---

<h2> Command Line</h2>

### Set up your VPS
   Need help setting up your VPS? \
   `` Butuh bantuan untuk menyiapkan VPS? `` \
   Check this out: https://github.com/eljaladz/NodeEl/tree/main/VPS-First-time-Setup 

## Run DUSK Node (Provisioner) 
Copy the command below once the VPS is ready \
` Salin command di bawah ini setelah VPS siap `
```bash
sudo apt-get update && sudo ufw allow 9000 && ufw allow 8080 && ufw allow 9000/udp && ufw allow 8080/tcp && wget https://raw.githubusercontent.com/eljaladz/NodeEl/main/Testnet/DUSK-ITN/dusk-itn.sh && chmod +x dusk-itn.sh && sudo ./dusk-itn.sh
```
Information about the nDUSK faucet can be found at:\
`Informasi mengenai faucet nDUSK bisa didapatkan di:`\
https://docs.dusk.network/nocturne/testnet-faucet/

After the node status is "SYNCED", proceed to the next step by staking nDUSK with the command:\
`Setelah status node “SYNCED”, lanjutkan ke langkah berikutnya dengan melakukan staking nDUSK dengan command:`\
```bash
rusk-wallet stake --amt 1000 # Or however much you want to stake
```
> 1000 nDUSK is the minimum staking amount. Make sure to leave some nDUSK for the gas fee.\
> `1000 nDUSK adalah jumlah minimal staking. Pastikan untuk meninggalkan sejumlah nDUSK untuk biaya gas fee`

## Commands that might help
The command below might help you \
`` Command di bawah ini mungkin bisa membantumu ``
### View staking information
You can view your staking information by running: \
`` Anda dapat melihat informasi staking Anda dengan menjalankan: ``
```bash
rusk-wallet stake-info
```
### Stake additional $tDUSK
You can make additional stakes by using this command(for example with 1000 tDUSK): \
`` Anda dapat melakukan stake tambahan dengan menggunakan command ini(sebagai contohnya dengan 1000 tDUSK): ``
```bash
rusk-wallet stake --amt 1000
```
### Checking node status
To see if your node is participating in consensus and creating blocks: \
`` Untuk melihat apakah node Anda berpartisipasi dalam konsensus dan membuat blok: ``
```bash
tail -F /var/log/rusk.log | grep "execute_state_transition"
```
or use the Dusk Node Toolkit created by [@Znomon](https://github.com/Znomon) \
`atau gunakan Dusk Node Toolkit yang dibuat oleh @Znomon`
```bash
curl --silent https://raw.githubusercontent.com/Znomon/Dusk-ITN2-Node-Tool/main/node_height_checker_w_estimate.py | python3
```

### Other command
```bash
rusk-wallet --help
```

> Source: https://docs.dusk.network/nocturne/node-running-guide/ \
> Sumber: https://docs.dusk.network/nocturne/node-running-guide/

If everything went right, and your node starts accepting and creating blocks, you have succesfully set up your Nocturne node!\
`` Jika semuanya berjalan baik, dan node mu mulai menerima dan membuat blok, Kamu telah berhasil menyiapkan node Nocturne mu! ``

---

<h2> Join Our Community </h2>
   Telegram Channel: https://t.me/nscryptoid <br>
   Telegram Group: https://t.me/nscryptoidchat <br>
   Get our product here > https://linktr.ee/peciNS `` Peci Songkok Custom Indonesia ``
   
<h2> Follow me </h2>
   GitHub: https://github.com/eljaladz <br>
   X: https://x.com/ejldzz <br>
   Warpcast: https://warpcast.com/ejld
   
---
### Wanna Contribute?
Feel free to submit issues and suggest improvements!\
`` Ingin berkontribusi? Jangan ragu untuk mengirimkan masalah dan menyarankan perbaikan! ``
