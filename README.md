# 📂 Automated Backup System

![Bash](https://img.shields.io/badge/shell_script-%23121011.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)

A robust, automated backup solution that securely archives your important files and notifies you of the backup status via email.

## 🌟 Features

- **Automated Backups**: Creates compressed tar archives of specified directories
- **Email Notifications**: Sends success/failure alerts to your inbox
- **Timestamped Archives**: Each backup has a unique timestamp for easy identification
- **Verification System**: Checks that backups were created successfully
- **Simple Configuration**: Easy to set up with minimal dependencies

## 🛠️ How It Works

This Bash script:
1. Creates a compressed (`tar.gz`) backup of your specified source directory
2. Stores it in your designated backup directory with a timestamp
3. Sends email notifications for:
   - Successful backup creation
   - Backup failures
   - Backup verification

## ⚙️ Configuration

1. **Set your source directory** (files to back up):
   ```bash
   SOURCE_DIR="$HOME/important_files"
   ```

2. **Set your backup destination**:
   ```bash
   BACKUP_DIR="$HOME/backups"
   ```

3. **Set your email for notifications**:
   ```bash
   EMAIL="saeedmarefatofficial@gmail.com"
   ```

## 🚀 Usage

1. Make the script executable:
   ```bash
   chmod +x backup_script.sh
   ```

2. Run the script:
   ```bash
   ./backup_script.sh
   ```

3. For automated backups, add to crontab:
   ```bash
   crontab -e
   ```
   Add line for daily backups at 2am:
   ```
   0 2 * * * /path/to/backup_script.sh
   ```

## 📧 Email Notifications

The script sends three types of notifications:
1. **Backup Success**: When archive is created successfully
2. **Backup Failed**: If the archiving process fails
3. **Verification**: Confirms the backup file exists

## 📂 Directory Structure

```
$HOME/
├── important_files/    # Your source files
└── backups/            # Backup destination
    ├── backup_20230815_143022.tar.gz
    └── backup_20230816_143055.tar.gz
```

## 💡 Dependencies

- `tar` (usually pre-installed on Linux systems)
- `mail` command (or configure your system's email service)

## 📜 License

This project is open-source and available for anyone to use and modify.

---

**Created with ❤️ by Saeed Marefat**  
For questions or support: saeedmarefatofficial@gmail.com