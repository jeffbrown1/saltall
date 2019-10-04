configure_files:
  file.managed:
    - name: ~/.ssh/authorized_keys/
    - source: salt://files_to_move/files/id_rsa.pub
