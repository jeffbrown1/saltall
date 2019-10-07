configure_bashrc:
  file.managed:
    - name: /home/g59admin/.bashrc
    - source: salt://bashrc/files/.bashrc
