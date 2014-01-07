#!/bin/sh
set -eu

# ssh daemon is required for disco master
SSHD=/usr/sbin/sshd
KEYGEN=/usr/bin/ssh-keygen
KEYFILE=/root/.ssh/id_rsa

# Generate and set up login key needed for disco
if [ ! -f $KEYFILE ]; then
  $KEYGEN -q -t rsa -N "" -f $KEYFILE
  cat $KEYFILE.pub >> /root/.ssh/authorized_keys
fi

# Fix message "Missing privilege separation directory"
mkdir -p /var/run/sshd
$SSHD

# Fix host key checking
cat > /root/.ssh/config << EOF
Host *
  StrictHostKeyChecking no
EOF

# Fix erlang cookie location
export HOME=/root

# required env
export DISCO_HOME=/opt/disco

exec $DISCO_HOME/bin/disco $@
