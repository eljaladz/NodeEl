# Setting up a VPS (Ubuntu Server) for the first time (BASIC)
#### ``Menyiapkan sebuah VPS (Ubuntu Server) baru``
---
## Copy the command below to update and upgrade packages on your VPS
`` Salin command di bawah ini untuk mengupdate dan mengupgrade package di VPS-mu ``
```bash
sudo apt update && sudo apt upgrade -y && sudo apt update && shutdown -r now
```
If the restart confirmation prompt appears, check all the columns by pressing the space key and then press enter \
`` Jika prompt konfirmasi restart muncul, ceklis semua kolom dengan menekan tombol spapsi dan lalu tekan tombol enter `` \
Your VPS will be restarted. Wait a few minutes and then reconnect to your VPS to continue. \
`` VPS Anda akan direstart Tunggu beberapa menit lalu akses kembali VPSmu untuk melanjutkan.`` 

---
## Useful Command
``Command lain yang mungkin membantu``

### Firewall Setup
> ```bash
> sudo ufw allow ssh && ufw allow 22 && ufw enable
> ```
> > You can add other ports as needed with the command: \
> > ``Kamu bisa menambahkan port lain yang dibutuhkan dengan command:``
> > ```bash
> > sudo ufw allow "port yang dibutuhkan"
> > ```


### Upgrade Kernel(ubuntu server)
> ```bash
> sudo apt-get install --install-recommends linux-generic-hwe-22.04
> ```
> > Only perform kernel upgrades when needed. \
> > ``Lakukan upgrade kernel hanya saat dibutuhkan.`` \
> > > Source: https://ubuntu.com/kernel/lifecycle


### Docker Installation
> 1. Setup Docker ``apt`` repo \
> ``Menyiapkan repo "apt" Docker``
> ```bash
>   sudo apt-get update && sudo apt-get install ca-certificates curl && sudo install -m 0755 -d /etc/apt/keyrings && sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && sudo chmod a+r /etc/apt/keyrings/docker.asc && echo \ "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \ $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | && sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && sudo apt-get update
> ```
> 2. Install the Docker packages. \
>  ``Menginstall pakcage Docker``
> ```bash
> sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
> ```
> 3. Verify that the Docker Engine installation is successful by running the ``hello-world`` image. \
> ``Verifikasi bahwa instalasi Docker Engine berhasil dengan menjalankan image "hello-world".``
> ```bash
> sudo docker run hello-world
> ```
> > Source: https://docs.docker.com/engine/install/ubuntu/



---

## Join Our Community
   Telegram Channel: https://t.me/nscryptoid <br>
   Telegram Group: https://t.me/nscryptoidchat <br>
   Get our product here > https://linktr.ee/peciNS `` Peci Songkok Custom Indonesia ``
   
## Follow me
   GitHub: https://github.com/eljaladz <br>
   X: https://x.com/ejldzz <br>
   Warpcast: https://warpcast.com/ejld

---

### Wanna Contribute?
Feel free to submit issues and suggest improvements!
