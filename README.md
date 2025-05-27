# Linux

# Linux Command Reference

A handy cheat sheet for commonly used Linux commands and concepts.

---

## 📂 Directory & File Navigation

| Command | Description |
|---------|-------------|
| `ls` | List files and directories |
| `ls -ltr` | List with details, sorted by modification time (oldest first) |
| `pwd` | Show current directory |
| `mkdir dirname` | Create a directory |
| `cd dirname` | Change to a directory |
| `cd ..` | Go back one directory |
| `cd ../..` | Go back two directories |

---

## 📄 File Management

| Command | Description |
|---------|-------------|
| `touch filename` | Create a file |
| `cat filename` | Display file content |
| `vi filename` / `vim filename` | Open file in editor |
| `Esc + i` | Insert/write mode in `vi` or `vim` |
| `#` | Comment line in shell scripts |
| `Esc` then `:wq!` | Save and quit editor |
| `Esc` then `:q!` | Quit editor without saving |

---

## 📘 Help & Documentation

| Command | Description |
|---------|-------------|
| `man ls` | Show manual page for `ls` |
| `history` | Show command history |

---

## 🔒 Permissions

| Command | Description |
|---------|-------------|
| `chmod 777 filename.sh` | Grant full permissions (read/write/execute) to user, group, and others |

### Permission Breakdown

- **User/Group/Others**: 7 → full (4+2+1)
- **4** → read  
- **2** → write  
- **1** → execute

---

## 🗑️ File & Directory Deletion

| Command | Description |
|---------|-------------|
| `rm filename` | Delete a file |
| `rm -rf dir` | Force delete directory recursively |

---

## ⚙️ Script Execution

| Command | Description |
|---------|-------------|
| `sh filename.sh` | Execute script using `sh` |
| `./filename.sh` | Execute script directly (must have execute permission) |

---

## 📊 System Monitoring

| Command | Description |
|---------|-------------|
| `node` | Health check (Node.js) |
| `nproc` | Number of CPU cores |
| `free` | Memory usage |
| `top` | Overall system usage |

---

## 🚀 Shebang

### What is Shebang?
```bash
#!/bin/bash
```
- Tells the system which interpreter to use for the script.
- Must be the first line in a shell script.

### Common Interpreters

| Shebang | Interpreter |
|---------|-------------|
| `#!/bin/bash` | Bash shell |
| `#!/bin/sh` | Linked to `dash` in modern systems |
| `#!/bin/dash` | Lightweight POSIX-compliant shell |
| `#!/bin/ksh` | Korn shell |

> 🔗 **Note:** Historically, `/bin/sh` linked to `bash`, but on many modern systems, it links to `dash`.

---

## 🔗 Linux Linking

| Type | Description |
|------|-------------|
| Hard Link | Direct pointer to inode (same file, different name) |
| Soft Link (Symlink) | Shortcut to file, can cross filesystems |

---

> ✅ **Before writing or sharing shell scripts, always verify the correct executable using the shebang line.**

## 🛠️ Advanced Scripting & Process Management

| Command | Description |
|---------|-------------|
| `ps` | Display current running processes |
| `ps -ef` | Show all processes in full format |
| `df -h` | Disk space usage in human-readable format |
| `grep` | Search/filter output |
| `ps -ef \| grep "ps"` | Example: Filter process list for "ps" |
| `./script.sh \| grep "anymatch"` | Filter script output |
| `|` (pipe) | Send output of one command as input to another |
| `set -x` | Enable debug mode (print commands as they run) |
| `set -e` | Exit script on any error |
| `set -o pipefail` | Catch errors in all piped commands, not just the last |

---

## 🔍 Text Processing with `awk`

| Command | Description |
|---------|-------------|
| `awk` | Pattern scanning and processing |
| `ps -ef \| grep "ps" \| awk -F" " '{print $1}'` | Print the first column of matching processes |
| `echo "John 23 Dev" \| awk -F" " '{print $1}'` | Output: `John` |
| `ps -ef \| awk '{print $1, $8}'` | Print user and command path |
| `awk -F":" '{print $1}' /etc/passwd` | List usernames from `/etc/passwd` |
| `$1` | Refers to the first column/field |
| `print` | Output statement in `awk` |

---

## 🔎 File Search with `find`

| Command | Description |
|---------|-------------|
| `find / -name file.txt` | Search for `file.txt` starting from root |
| `find /e/ -name file1.txt` | Search within `/e/` directory |

---

## 🛑 Signal Trapping

| Command | Description |
|---------|-------------|
| `trap` | Capture signals like `Ctrl + C` (SIGINT) |

---

## 📥 Data Fetching

| Command | Description |
|---------|-------------|
| `curl https://link \| grep ERROR` | Fetch URL content and look for "ERROR" |
| `curl` | Transfer data from or to a server |
| `wget` | Download files from the internet |

---

## 🔁 Control Flow: If-Else & Loops

### 🧮 If-Else Example

```bash
#!/bin/bash

value=10

if [ "$value" -lt 5 ]; then
  echo "Less than 5"
elif [ "$value" -lt 15 ]; then
  echo "Less than 15"
else
  echo "15 or more"
fi

```

### 🔁 For Loop Example

```bash
for i in {1..10}
do
  echo "Number: $i"
done

```
