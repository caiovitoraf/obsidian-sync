#!/bin/bash

REMOTE_USER="your_remote_username" 

REMOTE_IP="remote_machine_ip_or_hostname"  

REMOTE_FOLDER="/path/to/remote/folder/" 

LOCAL_FOLDER="/path/to/local/folder/"  

echo "🔽 Overwriting local folder with contents from the remote machine..."
rsync -avz --delete -e ssh "$REMOTE_USER@$REMOTE_IP:$REMOTE_FOLDER" "$LOCAL_FOLDER"

echo "✅ Sync completed successfully."