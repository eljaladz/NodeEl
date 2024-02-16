# DUSK ITN (Incentivized Testnet)

DUSK ITN Node Installation Script by N.S Crypto Community 

## Join Our Community
   Telegram Channel: https://t.me/nscryptoid <br>
   Telegram Group: https://t.me/nscryptoidchat <br>
   Get our product here > https://linktr.ee/peciNS `` Peci Songkok Custom Indonesia ``
   
## Follow me
   GitHub: https://github.com/eljaladz <br>
   X: https://x.com/ejldzz <br>
   Warpcast: https://warpcast.com/ejld
   
---

## Node Requirements
### Software
Using a stable operating system with long-term support, such as Ubuntu 22.04 or Debian Bookworm, is recommended. \
`` Disarankan menggunakan sistem operasi yang stabil dengan dukungan jangka panjang, seperti Ubuntu 22.04 atau Debian Bookworm. ``

### Hardware
The node software has been tested on x86-64/AMD64 and ARM architectures. \
`` Perangkat lunak node telah diuji pada arsitektur x86-64/AMD64 dan ARM. ``
#### Provisioner Specifications
| CPU | RAM | Storage | Network Connection |
| --- | --- | --- | --- |
| 2 cores; 2 GHz | 4 GB	 | 50 GB | 10 Mbps |

### Networking
Dusk makes use of the ultra-efficient P2P network protocol Kadcast. As such, the internet service requirements are relatively low, but they should be symmetrical and stable, with low latency.

### Port Fowarding
For the node to be accessible to the outside world, a number of ports need to be open to allow for inbound and outbound messages.\
  * 9000/udp: Required for Kadcast consensus messages.<br>
  * 8080/tcp: Optional HTTPS API for querying the node.<br>

> Source:
> * https://docs.dusk.network/itn/node-running-guide \
> * https://dusk.network/news/ITN-set-up/

---

## Command Line
### Set up your VPS
   Need help setting up your VPS? \
   `` Butuh bantuan untuk menyiapkan VPS? `` \
   Check this out: https://github.com/eljaladz/NodeEl/tree/main/VPSFirst-timeSetup 
   
### Run DUSK Node (Provisioner)
Copy the command below once the VPS is ready \
` Salin perintah di bawah ini setelah VPS siap `
```bash
sudo apt-get update && wget https://raw.githubusercontent.com/eljaladz/NodeEl/main/Testnet/DUSK-ITN/dusk-itn.sh && chmod +x dusk-itn.sh && sudo ./dusk-itn.sh
```

### Commands that might help
The command below might help you \
`` Command di bawah ini mungkin bisa membantumu ``

#### View staking information
You can view your staking information by running: \
`` Anda dapat melihat informasi staking Anda dengan menjalankan: ``
```bash
rusk-wallet stake-info
```

#### Checking node
To see if your node is participating in consensus and creating blocks: \
`` Untuk melihat apakah node Anda berpartisipasi dalam konsensus dan membuat blok: ``

```bash
tail -F /var/log/rusk.log | grep "execute_state_transition"
```

> Note that this can take a while, given that your stake needs at least 2 epochs, or 4320 blocks, to mature. Your stake, relative to the total stake, also plays a factor. \
> `` Perhatikan bahwa ini bisa memakan waktu cukup lama, mengingat staking mu memerlukan setidaknya 2 epoch, atau 4320 blok, untuk matang. Staking mu, relatif terhadap total stake, juga berperan. `` 

> Additional information. \
> Q: Why when I use the command tail -F /var/log/rusk.log | grep "execute_state_transition" not getting results/output?\
> A: If you have only 1000 dusk staked, statistically you should take part in block production every 2-4 days atm. "\
> `` T: Mengapa saat menggunakan command ``` tail -F /var/log/rusk.log | grep "execute_state_transition" ``` tidak mengeluarkan hasil/output? ``\
> `` J: Jika Anda hanya memiliki 1000 tDUSK yang stake, secara statistik Anda seharusnya mendapat bagian dalam produksi blok setiap 2-4 hari pada saat ini. ``\
> 🕞 3:30 PM UTC 📆 Feb, 16 2024\
> Source: https://discord.com/channels/847466263064346624/1207982066017509446/1208072887202881576

If everything went right, and your node starts accepting and creating blocks, you have succesfully set up your ITN node!\
`` Jika semuanya berjalan baik, dan node mu mulai menerima dan membuat blok, Anda telah berhasil menyiapkan node ITN mu! ``

---

### Wanna Contribute?
Feel free to submit issues and suggest improvements!\
`` Ingin berkontribusi? Jangan ragu untuk mengirimkan masalah dan menyarankan perbaikan! ``
