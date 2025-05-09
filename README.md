SubD - Subdomain CNAME Resolver

SubDNS is a Bash script that retrieves the CNAME records for a list of subdomains. It is designed to simplify the process of identifying the underlying infrastructure and domain relationships for a set of subdomains.
Features

    Retrieves the CNAME record for each provided subdomain
    Displays the CNAME record or a message if no CNAME record is found
    Supports reading subdomains from standard input (e.g., cat subdomains.txt | ./subdns.sh)
    Handles errors gracefully, such as when the dig command is not available

Usage

    Save the script to a file, e.g., subdns.sh.

    Make the script executable: chmod +x subdns.sh.

    Run the script with subdomains provided via standard input:

bash

cat subdomains.txt | ./subdns.sh

Alternatively, you can provide the subdomains directly as arguments:

bash

    ./subdns.sh subdomain1.example.com subdomain2.example.com

Example Output

Code

CNAME record for subdomain1.example.com: subdomain1.cdn.example.com
No CNAME record found for subdomain2.example.com
CNAME record for subdomain3.example.com: subdomain3.app.example.com

Acknowledgments

I would like to express my gratitude to 0daystolive for their inspiring work on various cybersecurity and automation projects. Their contributions to the community have been invaluable and have served as a source of motivation for the development of this script.
Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.
