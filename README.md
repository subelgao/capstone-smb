# capstone-smb

Project Problem Statement

In today’s cloud-native environments, reliance on a single cloud provider poses a significant risk to application availability and business continuity during outages. Organizations require resilient architectures that can withstand cloud service disruptions without impacting user experience or causing financial losses.
This project addresses the challenge of ensuring high availability and disaster recovery by implementing a multi-cloud failover architecture. The solution involves deploying an application that runs primarily on AWS, with an automated failover to Azure in the event of a service outage.
The failover mechanism will be orchestrated using Terraform for infrastructure provisioning, Ansible for configuration management, and Jenkins for CI/CD automation. AWS Route 53 will manage DNS-based health checks and failover policies to reroute traffic between AWS and Azure environments as needed.
This approach aims to achieve:
•	Continuous service availability during cloud outages.
•	Minimized downtime and seamless user experience.
•	Fully automated, infrastructure-as-code disaster recovery mechanisms.
