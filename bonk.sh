#!/bin/bash

# Define the color #7071d1 in RGB format
# Initialize ANSI color codes
initializeANSI()
{
  esc=""

  # Custom purple color (#7071d1)
  purple="${esc}[38;2;112;113;209m"
  purpleb="${esc}[48;2;112;113;209m"

  blackf="${purple}";   redf="${purple}";    greenf="${purple}"
  yellowf="${purple}";  bluef="${purple}";   purplef="${purple}"
  cyanf="${purple}";    whitef="${purple}"
  
  blackfbright="${purple}";   redfbright="${purple}";    greenfbright="${purple}"
  yellowfbright="${purple}";  bluefbright="${purple}";   purplefbright="${purple}"
  cyanfbright="${purple}";    whitefbright="${purple}"
  
  blackb="${purpleb}";   redb="${purpleb}";    greenb="${purpleb}"
  yellowb="${purpleb}";  blueb="${purpleb}";   purpleb="${purpleb}"
  cyanb="${purpleb}";    whiteb="${purpleb}"

  boldon="${esc}[1m";    boldoff="${esc}[22m"
  italicson="${esc}[3m"; italicsoff="${esc}[23m"
  ulon="${esc}[4m";      uloff="${esc}[24m"
  invon="${esc}[7m";     invoff="${esc}[27m"

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

