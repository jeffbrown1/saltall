configure_files:
  file.managed:
    - name: %h/.ssh/authorized_keys
    - source: salt://files_to_move/files/*