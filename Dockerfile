FROM quay.io/ansible/awx-ee:latest

RUN ansible-galaxy collection install community.general \
  && ansible-galaxy collection install ansible.netcommon \
  && ansible-galaxy collection install community.network \
  && ansible-galaxy collection install arubanetworks.aos_switch \
  && ansible-galaxy collection install cisco.ios \
  && ansible-galaxy collection install paloaltonetworks.panos \
  && ansible-galaxy collection install junipernetworks.junos \
  && ansible-galaxy collection install community.vmware \
  && ansible-galaxy collection install netbox.netbox \
  && ansible-galaxy collection install infoblox.nios_modules \
  \
  && python3 -m pip install dnspython \
  && python3 -m pip install netaddr \
  && python3 -m pip install pynetbox \
  && python3 -m pip install ncclient \
  && python3 -m pip install infoblox-client
