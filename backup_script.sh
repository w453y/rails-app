#!/bin/bash
backup_dir="/home/w453y/backups"
source="/home/w453y/rails-app"
filename="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"
sudo tar -czvf "$backup_dir/$filename" "$source"
echo "Backup completed at $(date)"