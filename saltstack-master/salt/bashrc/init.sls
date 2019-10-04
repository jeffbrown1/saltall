configure_bashrc:
  file.managed:
    - name: /home/root/.bashrc
    - source: salt://bashrc/files/.bashrc
