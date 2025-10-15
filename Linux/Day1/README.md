
# 🧠 Linux & Bash Conditional Scripting Notes

## 🗂️ 1. File & Directory Test Operators

| Operator | Meaning | Example | Explanation |
|-----------|----------|----------|--------------|
| `-f file` | True if file exists and is a **regular file** | `if [[ -f notes.txt ]]` | Checks for file existence |
| `-d dir` | True if directory exists | `if [[ -d /tmp ]]` | Used for directory checks |
| `-x file` | True if file is **executable** | `if [[ -x script.sh ]]` | Checks if user can run file |
| `-w file` | True if file/directory is **writable** | `if [[ -w /tmp ]]` | Checks write permission |
| `-r file` | True if readable | `if [[ -r notes.txt ]]` | Read permission check |
| `-z string` | True if **string is empty** | `if [[ -z "$var" ]]` | Often used in string checks |
| `-n string` | True if **string is not empty** | `if [[ -n "$var" ]]` | Checks non-empty variables |

---

## 📄 2. File and Directory Commands

| Command | Description | Example |
|----------|--------------|----------|
| `ls -A` | Lists all files **except** `.` and `..` | `ls -A /tmp` |
| `pwd` or `$PWD` | Prints current working directory | `echo $PWD` |
| `realpath file` | Returns the **absolute path** of a file | `realpath notes.txt` |
| `cd` | Change directory | `cd /home` |

---

## ⚙️ 3. Exit Codes and Conditionals

| Concept | Meaning | Example |
|----------|----------|----------|
| `exit N` | Exit script with code N | `exit 1` |
| `$?` | Exit status of last command | `echo $?` |
| `0` | Success | – |
| `non-zero` | Failure | – |
| `if [[ condition ]]` | Main conditional syntax | `if [[ $a -eq $b ]]` |
| `else`, `elif` | Conditional branching | – |

💡 **Convention:**  
- `0` → success  
- `1` or higher → specific error types (used for debugging)

---

## 🧾 4. Variables

| Variable | Meaning | Example |
|-----------|----------|----------|
| `$PWD` | Current working directory | – |
| `$HOME` | User’s login directory | – |
| `$USER` | Username | – |
| `$EUID` | Numeric ID of current user | 0 = root |
| `$#` | Number of command-line arguments | – |
| `$0` | Script name | – |
| `$1, $2, ...` | Positional arguments | – |

---

## 🧰 5. Common Conditional Checks

| Task | Example Command | Description |
|------|------------------|-------------|
| Check current dir | `if [[ "$PWD" == "/" ]]` | Checks if you’re in root |
| Check if file exists | `if [[ -f notes.txt ]]` | – |
| Check if directory is writable | `if [[ -w "$PWD" ]]` | – |
| Check if file is executable | `if [[ -x "$file" ]]` | – |
| Compare strings | `if [[ "$a" == "$b" ]]` | – |
| Compare numbers | `if [[ $a -gt $b ]]` | Greater than |
| Logical OR | `||` | `if [[ -z "$a" || -z "$b" ]]` |
| Logical AND | `&&` | `if [[ -f "$a" && -r "$a" ]]` |

---

## ⚡ 6. Running Commands and Checking Status

| Command | Description | Example |
|----------|--------------|----------|
| `ls /tmp` | List `/tmp` contents | – |
| `if [[ $? -eq 0 ]]` | Check if last command was successful | – |
| `echo` | Print text to screen | `echo "Hello"` |
| `read -p` | Take user input | `read -p "Enter name: " name` |

---

## 👑 7. Root and Permissions

| Command/Variable | Description | Example |
|------------------|-------------|----------|
| `$EUID` | Effective user ID (0 = root) | `if [[ $EUID -ne 0 ]]` |
| `chmod` | Change file permissions | `chmod +x script.sh` |
| `sudo` | Run command as root | `sudo useradd mariyam` |

---

## 📜 8. Loops and File Reading

| Syntax | Description | Example |
|---------|--------------|----------|
| `while ... do ... done` | Looping structure | – |
| `IFS=',' read -r a b` | Read CSV-style lines | – |
| `done < file.txt` | Input redirection for loop | Reads line-by-line from file |

---

## 🧩 9. String Operations

| Expression | Meaning | Example |
|-------------|----------|----------|
| `"$var"` | Expands variable safely | `echo "$HOME"` |
| `[[ -z "$var" ]]` | Empty check | – |
| `[[ "$a" == "$b" ]]` | String comparison | – |

---

## 📂 10. Exit Codes and Error Handling Summary

| Exit Code | Meaning |
|------------|----------|
| 0 | Success |
| 1 | Generic error |
| 2 | File not found |
| 3 | Not executable |
| 4 | Directory empty |
| 5 | Not writable |

---

## 🧮 11. Bonus — Commands Seen Earlier

| Command | Purpose |
|----------|----------|
| `id username` | Check if user exists |
| `chpasswd` | Change password in batch |
| `chage -d 0` | Force password reset |
| `useradd -m` | Create user with home dir |
| `tail -F` | Follow log file continuously |
| `awk` | Pattern scanning and text processing |
| `find` | Search files by name, type, or time |
| `grep` | Search text patterns |
| `vmstat`, `mpstat`, `pidstat` | Performance monitoring tools |
