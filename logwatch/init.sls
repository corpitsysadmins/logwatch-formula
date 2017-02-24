logging_essentials:
  pkg.installed:
      - pkgs:
        - logwatch

logwatch_config:
  file.managed:
      - name: /etc/logwatch/conf/logwatch.conf
      - source: salt://logging/files/logwatch.conf
      - require:
        - pkg: logging_essentials

