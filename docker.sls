docker:
    pkg.installed:
        - name: docker.io
    service.running:
        - name: docker
        - enable: True
        - reload: True
        - pkg: docker.io
