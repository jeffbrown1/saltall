configure_bashrc:
  file.managed:
    - name: /home/g59admin/.bashrc
    - source: salt://bashrc/files/.bashrc

configure_bashrc:
  file.managed:
    - name: /home/root/.bashrc
    - source: salt://bashrc/files/.bashrc
