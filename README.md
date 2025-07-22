# 📁 ObsidianSync - Simple Folder Sync via SSH

ObsidianSync is a **minimalist Bash script** that allows you to **safely overwrite a local folder** with content from a remote Linux computer using `rsync` over SSH.

> 💡 **Use case:** You use [Obsidian](https://obsidian.md/) to take notes on two Linux machines (e.g., a laptop and a desktop), and you want to keep your note vault in sync between them securely and effortlessly.

Whether you're syncing work folders, backups, or private vaults between machines, this tool makes the process quick and consistent.

---

## Features

✅ One-command folder synchronization  
🔒 Secure via SSH connection  
♻️ Auto-deletes local files that don't exist on the remote (fully mirrors remote folder)  
🖥️ Works between two Linux machines

---

## How to Use:

### 1. 📥 Download the Script

Click the green `<> Code` button on this GitHub page, then `Download ZIP`.  
Unzip the folder anywhere you like.

Or clone using Git (optional for advanced users):

```bash
git clone https://github.com/caiovitoraf/obsidian-sync
```

---

### 2. 🧩 Install Required Tools (Only Once)

Make sure your system has the following installed:

```bash
sudo apt update
sudo apt install rsync openssh-client
```

These are standard on most Linux distributions.

---

### 3. 🛠️ Configure the Script

Open the script file `ObsidianSync.sh` in any text editor (like VS Code, Gedit, or Nano).  
You’ll find the following lines near the top:

```bash
REMOTE_USER="your_remote_username"        # Set the username used to connect to the remote machine via SSH.
REMOTE_IP="remote_machine_ip"             # Set the IP address (or hostname) of the remote machine you want to sync from.
REMOTE_FOLDER="/path/to/remote/folder/"   # Set the absolute path of the folder you want to sync from the remote machine.
LOCAL_FOLDER="/path/to/local/folder/"     # Set the absolute path of the local folder where the remote data should be copied to.
```

🔹 **Replace each value** with your actual information.  
💡 Tip: Use full absolute paths (starting with `/`).

---

### 4. ✅ Make the Script Executable

In the terminal, navigate to the folder where you placed the script and run:

```bash
chmod +x ObsidianSync.sh
```

This gives it permission to run like a program.

---

### 5. 🔄 Run the Script

In the same terminal window:

```bash
./ObsidianSync.sh
```

You’ll see messages like:

```text
🔽 Overwriting local folder with contents from the remote machine...
✅ Sync completed successfully.
```

---

## 🔐 SSH Access Requirements

Make sure you can access the remote computer via SSH. Test it:

```bash
ssh your_remote_username@remote_machine_ip
```

If this works, the script will too. For easier use, consider [setting up SSH keys](https://www.ssh.com/academy/ssh/keygen) to avoid typing your password every time.

---

## ⚠️ Warnings

- The `--delete` option in `rsync` **erases local files** not present on the remote. It makes your local folder exactly like the remote.
- Be absolutely sure your `REMOTE_FOLDER` and `LOCAL_FOLDER` are correctly set before running the script.

---

## 🧑‍💻 License

This project is open-source under the [MIT License](LICENSE).

---
