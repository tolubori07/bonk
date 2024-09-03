#!/bin/bash

# Define the color #7071d1 in RGB format
# Initialize ANSI color codes
initializeANSI()
{
  esc=""

  # Custom purple color (#7071d1)
  purple="${esc}[38;2;112;113;209m"
  purpleb="${esc}[48;2;112;113;209m" 
  reset="${esc}[0m"
}

# Call the function to initialize the colors
initializeANSI

# Display the output with the Bonk pattern
cat << EOF
${reset}${purple}██████╗  ██████╗ ███╗   ██╗██╗  ██╗
${reset}${purple}██╔══██╗██╔═══██╗████╗  ██║██║ ██╔╝
${reset}${purple}██████╔╝██║   ██║██╔██╗ ██║█████╔╝ 
${reset}${purple}██╔══██╗██║   ██║██║╚██╗██║██╔═██╗ 
${reset}${purple}██████╔╝╚██████╔╝██║ ╚████║██║  ██╗
${reset}${purple}╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝${reset}

