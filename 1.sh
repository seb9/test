cat > cloud-config-file << EOF
#cloud-config
users:
  - name: "seb"
    ssh-authorized-keys:
      - "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDPzeaBdbXKfYhHXnahPHtVo+eCEg/JPiWnyiJXS594EFyn+gdfLh/WLQUOt/YfzeyeAm2XoCqebTVs9HKRBqszYKoeyo8RmqZe8wx0wHQh2HtR2hwuyniQ2LePDFO/c9WVtNyj44fX4SFBQJmgqtAK/mXBek1nFrrHE1xPfPlvmSp1NpPTnsHL87oPAC1Q+nBML7iqMNLXq+79TAmP98wysJLoX5bE1RWTOk5tDbRxcaU6tQPGYhRRIrYE1wXICMbhXGTw3WhIskCJt/xFJHfeIrBrNe08te+DOY/s2Bk94RKLpGRj323y+bP6bP70rPHepedfhQGb+LaShquruAxipv05g9Absvc2c7ONMFAZZhtidu8+XcwmuwmmJiF7Hg5s/nZcGzcBWB1GLjqG90zoo3by11WaXKQkQF2gfdCXKuYRFwCXyqqcX7BkfTfoOb4W1yqmqYY3wj3JkdGzOiG2EK9lW2jA7tgbMXPo8ua7dNj+Od65UAFUe+nIQ918nNXRbEv+YOhviyfianqxNi5OqOW3CaTrk0nuEAqG+8C2BhvKNtRH1LnGwFxnDMann39XXXM2Nkv4rH/AZtjDtn37OPGrEUKrxoOXaWqAs5a1rvcqYnBAk9OGPYn/UwjFtQ5Ci8mNjcF6yTlm2rFYetkfUXj/zKH6zQ14MH4L3XxrAw=="
  - groups:
      - "sudo"
      - "docker"
hostname: "coreos-01"
EOF

sudo coreos-install -d /dev/sda -C stable -c cloud-config-file
