#!/bin/bash

echo "Select an option:"
echo "1. Create Conda Environment"
echo "2. Another Script"
echo "3. Delete a Conda Environment"
echo "4. Exit"

# Read user choice
read -p "Enter your choice (1-4): " choice

# Switch case to handle user selection
case $choice in
  1)
    # Prompt user for required arguments for conda environment creation
    read -p "Enter the environment name: " env_name
    read -p "Enter the Python version: " python_version
    
    # Call the conda environment creation script using bash with the provided arguments
    echo "Running conda environment creation script..."
    bash girish_scripts/.conda_env.sh "$env_name" "$python_version"
    ;;
  2)
    # You can add another script for option 2
    echo "Running another script..."
    bash ./another_script.sh  # Replace with the correct script name
    ;;
  3)
    # Call the conda environment deletion script
    echo "Running Conda environment deletion script..."
    bash girish_scripts/delete_conda.sh  # Ensure the path to delete_conda_env.sh is correct
    ;;
  4)
    echo "Exiting..."
    exit 0
    ;;
  *)
    echo "Invalid option, please select a valid number."
    ;;
esac
