{%- set user = salt['pillar.get']('hello_', 'new') -%}
{%- set all_users = salt['user.list_users']() -%}
{%- if user in all_users -%}
sift-user-{{ user }}:
  user.present:
    - name: {{ user }}
    - home: /home/{{ user }}
{%- else %}
new-user-{{ user }}:
  user.present:
    - name: {{ user }}
    - fullname: jeffbrown
    - shell: /bin/bash
    - home: /home/{{ user }}
    - password: $6$kolxRSPepa3vXCRs$XqO3KPEEPil4WdIawP4ALrHGjgZLLqf9oEDZETDzmvfNUc8O3X2YQHYZutfCJIRWHKEAoZ53AFAoS1pOCuw7S.:18088:0:99999:7
    - gid_from_name: True
{%- endif %}
