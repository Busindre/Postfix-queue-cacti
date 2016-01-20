# Postfix-queue-cacti
Cacti template for Postfix email queue. Template based on ssh, no SNMP.

**Graphs**: Emails in queue + Queue size. (Screenshots)

##Guidelines
SSH connection options are easily configurable in the file "*mailq.sh*".
### Target host.
- User (cacti) accessible by public ssh key.
- Mailq command (installed by default with Postfix).

###Cacti server.
- SSH client and private key SSH to connect to the target host.
