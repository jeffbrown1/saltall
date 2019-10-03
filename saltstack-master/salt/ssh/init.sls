tighten_ssh:
  file.managed:
      - name: /etc/ssh/sshd_config
      - source: salt://ssh/files/sshd_config

restart_sshd:
  service.running:
    - name: sshd
    - enable: True
    - watch:
      - file: /etc/ssh/sshd_config
