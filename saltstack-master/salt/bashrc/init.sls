configure_bashrc:
  file.managed:
    - name: /home/root/
    - source: salt://bashrc/files/.bashrc
