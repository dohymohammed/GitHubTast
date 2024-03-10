#!/bin/bash

# Receive the username
echo -n "Enter your name: "
read name

# Receive the appointment date
echo -n "Enter appointment date (YYYY-MM-DD): "
read date

# Verify the validity of the appointment date
if [[ ! $date =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
   echo "The appointment date is incorrect!"
   exit 1
fi

# View registration information
echo "$name was successfully registered on $date."

# Write registration information to a file
echo "$name,$date" >> appointments.txt

# View a list of appointments
echo "List of appointments:"
catappointments.txt
