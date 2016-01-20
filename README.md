# Postfix-queue-cacti
Cacti template for Postfix email queue. Template based on ssh, no SNMP.

**Graphs**: Emails in queue + Queue size. (Screenshots)

## Installation

- Copy the script "mailq.sh" to <cacti_dir>/scripts/ directory.
- SSH connection options are easily configurable in the file "*mailq.sh*".
- Import the file cacti_graph_template_postfix_email_queue.xml in Cacti.

## Dependencies

### Target host.
- User (cacti) accessible by public ssh key.
- Mailq command (installed by default with Postfix).

###Cacti server.
- SSH client and private key SSH to connect to the target host.

## Use / Output example
```sh
bash mailq.sh www.domain.com
size:543 queue:29
```
