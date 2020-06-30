wordpress:
    pkg.installed:
        - name: wordpress
    service.running:
        - name: wordpress
        - enable: True
        - reload: True
        - pkg: wordpress
