BACKUP_PATH="/mnt/c/Users/jyd1kor/OneDrive - Bosch Group/Main/Backup"

tarball="$(date +'%Y%m%d_%H%M%S')_$(uname -r).tar.gz"

tar -czf "$HOME/Downloads/$tarball" \
    $HOME/.bashrc \
    $HOME/.profile

if [ -d "$BACKUP_PATH" ]; then
    mv "$HOME/Downloads/$tarball" "$BACKUP_PATH"
else
    echo "Backup path does not exist: $BACKUP_PATH"
    exit 1
fi