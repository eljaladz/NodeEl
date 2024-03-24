<h1> DUSK ITN (Incentivized Testnet) </h1>

DUSK ITN Node Installation Script by N.S Crypto Community 

<h2> Join Our Community </h2>
   Telegram Channel: https://t.me/nscryptoid <br>
   Telegram Group: https://t.me/nscryptoidchat <br>
   Get our product here > https://linktr.ee/peciNS `` Peci Songkok Custom Indonesia ``
   
<h2> Follow me </h2>
   GitHub: https://github.com/eljaladz <br>
   X: https://x.com/ejldzz <br>
   Warpcast: https://warpcast.com/ejld
   
---

<h2> Command Line</h2>

### Set up your VPS
   Need help setting up your VPS? \
   `` Butuh bantuan untuk menyiapkan VPS? `` \
   Check this out: https://github.com/eljaladz/NodeEl/tree/main/VPS-First-time-Setup 

### Run DUSK Node (Provisioner) 
Copy the OCP command below once the VPS is ready \
` Salin perintah OCP di bawah ini setelah VPS siap `
```bash
sudo apt-get update && sudo ufw allow 9000 && ufw allow 8080 && ufw allow 9000/udp && ufw allow 8080/tcp && wget https://raw.githubusercontent.com/eljaladz/NodeEl/main/Testnet/DUSK-ITN/dusk-itn.sh && chmod +x dusk-itn.sh && sudo ./dusk-itn.sh
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
#### Stake additional $tDUSK
You can make additional stakes by using this command(for example with 1000 tDUSK): \
`` Anda dapat melakukan stake tambahan dengan menggunakan command ini(sebagai contohnya dengan 1000 tDUSK): ``
```bash
rusk-wallet stake --amt 1000
```
#### Checking node
To see if your node is participating in consensus and creating blocks: \
`` Untuk melihat apakah node Anda berpartisipasi dalam konsensus dan membuat blok: ``
```bash
tail -F /var/log/rusk.log | grep "execute_state_transition"
```

> Note that this can take a while, given that your stake needs at least 2 epochs, or 4320 blocks, to mature. Your stake, relative to the total stake, also plays a factor. \
> `` Perhatikan bahwa ini bisa memakan waktu cukup lama, mengingat staking mu memerlukan setidaknya 2 epoch, atau 4320 blok, untuk matang. Staking mu, relatif terhadap total stake, juga berperan. ``
> Source: https://docs.dusk.network/itn/node-running-guide/

> Additional information. \
> Q: Why when I use the command ```tail -F /var/log/rusk.log | grep "execute_state_transition"``` not getting results/output?\
> A: If you have only 1000 dusk staked, statistically you should take part in block production every 2-4 days atm. "\
> `` T: Mengapa saat menggunakan command ``` tail -F /var/log/rusk.log | grep "execute_state_transition" ``` tidak mengeluarkan hasil/output? ``\
> `` J: Jika Anda hanya memiliki 1000 tDUSK yang stake, secara statistik Anda seharusnya mendapat bagian dalam produksi blok setiap 2-4 hari pada saat ini. ``\
> 🕞 3:30 PM UTC 📆 Feb, 16 2024\
> Source: https://discord.com/channels/847466263064346624/1207982066017509446/1208072887202881576

If everything went right, and your node starts accepting and creating blocks, you have succesfully set up your ITN node!\
`` Jika semuanya berjalan baik, dan node mu mulai menerima dan membuat blok, Kamu telah berhasil menyiapkan node ITN mu! ``

---

### Wanna Contribute?
Feel free to submit issues and suggest improvements!\
`` Ingin berkontribusi? Jangan ragu untuk mengirimkan masalah dan menyarankan perbaikan! ``
