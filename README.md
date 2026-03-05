# linux-user-management
Automated user and permission management script for Linux
# Linux User & Permission Management

## Overview
Automated bash script to create users, 
groups and set permissions on CentOS 7.

## What This Script Does
- ✅ Creates 3 groups: dev, ops, hr
- ✅ Creates 10 users across groups
- ✅ Sets passwords automatically
- ✅ Creates project directories
- ✅ Sets proper permissions (770)

## Usage
```bash
chmod +x user_management.sh
sudo bash user_management.sh

```

## Permission Structure
| Directory | Owner | Group | Others |
|-----------|-------|-------|--------|
| /projects/dev | root | dev | none |
| /projects/ops | root | ops | none |
| /projects/hr | root | hr | none |

## Screenshots
### Groups Created
<img width="1246" height="976" alt="permissions" src="https://github.com/user-attachments/assets/6ddea6f1-2ba2-4b29-9865-d64991d595ee" />
### Groups List 
<img width="1230" height="951" alt="groups" src="https://github.com/user-attachments/assets/37cfe5f9-bd6d-41b1-93c8-47b8dc299e89" />
### Permission Denied
<img width="1230" height="950" alt="denied" src="https://github.com/user-attachments/assets/5aec92e9-fda4-456e-8877-aa6a83a9dae5" />

## Environment
- OS: CentOS Stream 7
- Hypervisor: VMware Workstation
