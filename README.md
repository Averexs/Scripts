# 🐳 Docker‑Helper Scripts

*A collection of one‑liner Bash scripts that simplify the installation and maintenance of Docker (and Portainer) on Debian‑based systems.*

---

## 📦 What’s in here?

| Script | Purpose | OS | Usage |
|--------|---------|----|-------|
| `debian-docker-install.sh` | Installs Docker on Debian | Debian | `bash debian-docker-install.sh` |
| `ubuntu-docker-install.sh` | Installs Docker on Ubuntu | Ubuntu | `sudo bash ubuntu-docker-install.sh` |
| `portainer-install.sh` | Installs Portainer (Docker‑based UI) | Debian/Ubuntu | `sudo bash portainer-install.sh` |
| `update-portainer.sh` | Updates Portainer to the latest version | Debian/Ubuntu | `sudo bash update-portainer.sh` |

> **Tip** – All scripts are self‑contained. They automatically add the Docker APT repository, import the GPG key, and perform the `apt install` steps. No manual configuration required.

---

## 🚀 Quick‑Start

> **Prerequisites**  
> *Debian or Ubuntu (18.04+).*  
> Make sure you have `curl` and `sudo` installed.

### 1️⃣ Install Docker (Debian)

```bash
curl -L https://raw.githubusercontent.com/Averexs/Scripts/main/debian-docker-install.sh \
  -o debian-docker-install.sh
bash debian-docker-install.sh
```

### 1️⃣ Install Docker (Ubuntu)

```bash
sudo curl -L https://raw.githubusercontent.com/Averexs/Scripts/main/ubuntu-docker-install.sh \
  -o ubuntu-docker-install.sh
sudo bash ubuntu-docker-install.sh
```

### 2️⃣ Install Portainer

```bash
sudo curl -L https://raw.githubusercontent.com/Averexs/Scripts/main/portainer-install.sh \
  -o portainer-install.sh
sudo bash portainer-install.sh
```

### 3️⃣ Update Portainer

```bash
sudo curl -L https://raw.githubusercontent.com/Averexs/Scripts/main/update-portainer.sh \
  -o update-portainer.sh
sudo bash update-portainer.sh
```

### 3️⃣ Update Dockge

```bash
sudo curl -L https://raw.githubusercontent.com/Averexs/Scripts/refs/heads/main/dockge-install.sh \
  -o dockge-install.sh
sudo bash dockge-install.sh
```

> **Result** – Docker (and optionally Portainer) is up and running.  
> You can now use `docker` from the command line or open Portainer in your browser at `http://<your‑server-ip>:9000`.

---

## 📄 How the Scripts Work

Each script follows the same pattern:

1. **Add Docker’s official GPG key**  
2. **Set up the stable repository**  
3. **Update APT cache**  
4. **Install Docker Engine** (`docker-ce`, `docker-ce-cli`, `containerd.io`)  
5. **Start & enable Docker** (`systemctl enable --now docker`)  
6. *(Optional)* **Create a `docker` group** and add the current user.  
7. *(Portainer)* Pull and run the Portainer image as a container.

> For full source code, visit the [GitHub repository](https://github.com/Averexs/Scripts).

---

## 📄 License

This project is released under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

> Happy Docker‑ming! 🚀
