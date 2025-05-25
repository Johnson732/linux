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
