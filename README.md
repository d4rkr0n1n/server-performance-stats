# Server Performance Stats

## Specification

Vagrantfile creates a VM using vagrant and copies a script ``server-stats.sh`` that can analyse basic server performance stats.

<hr/>
The script should run on VM provisioned by vagrant and it should give you the following stats:

- Total CPU usage
- Total memory usage (Free vs Used including percentage)
- Total disk usage (Free vs Used including percentage)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- OS Version
- Uptime
- Load Average
- Logged In Users
- Failed Login Attempts etc.

## Commands
- ``vagrant up`` - For starting and provisioning the VM using vagrant.
- ``vagrant reload`` - For applying configuration changes using vagrant.
- ``vagrant provision`` - For provisioning file and shell using vagrant.

## Project URL: https://roadmap.sh/projects/server-stats
