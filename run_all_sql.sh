#!/bin/bash

# Prompt for MySQL root password
read -sp "Enter MySQL root password: " MYSQL_PWD
echo

# MySQL connection details
MYSQL_USER="root"
MYSQL_HOST="127.0.0.1"
MYSQL_PORT="3306"

# Loop through all .sql files in the current directory
for file in *.sql; do
  echo "Running $file..."
  mysql -u "$MYSQL_USER" -p"$MYSQL_PWD" -h "$MYSQL_HOST" -P "$MYSQL_PORT" < "$file"
  
  # Check for error
  if [ $? -ne 0 ]; then
    echo "Error executing $file"
    exit 1
  fi
done

echo "All SQL scripts executed successfully."
