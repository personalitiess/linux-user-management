#!/bin/bash
echo "Creating groups..."
groupadd dev
groupadd ops
groupadd hr 

# creating users 
echo "creating users.."
#dev team 
useradd -m -G dev dev_user1
useradd -m -G dev dev_user2
useradd -m -G dev dev_user3

#ops team 
useradd -m -G ops ops_user1
useradd -m -G ops ops_user2
useradd -m -G ops ops_user3

#hr team 

useradd -m -G hr hr_user1
useradd -m -G hr hr_user2
useradd -m -G hr hr_user3

# admin 

useradd -m -G dev,ops,hr  admin_user

# setting passwords
echo "set passwords.."
echo "dev_user1:pass123" | chpasswd
echo "dev_user2:pass123" | chpasswd
echo "dev_user3:pass123" | chpasswd
echo "ops_user1:pass123" | chpasswd
echo "ops_user2:pass123" | chpasswd
echo "ops_user3:pass123" | chpasswd
echo "hr_user1:pass123" | chpasswd
echo "hr_user2:pass123" | chpasswd
echo "hr_user3:pass123" | chpasswd
echo "admin_user:pass123" | chpasswd

# making directories 
echo "make directories.."
mkdir -p /project/dev
mkdir -p /project/ops
mkdir -p /project/hr 

#setting ownership
echo "set ownership"
chown root:dev /project/dev
chown root:ops /project/ops
chown root:hr /project/hr 

#set permissions

echo "giving persmissions"
chmod 770 /project/dev
chmod 770 /project/ops
chmod 770 /project/hr 


echo "done all users and permissions set..."







