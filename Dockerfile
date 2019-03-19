FROM kilna/liquibase-postgres
COPY liquibase /workspace
COPY run.sh /opt/liquibase_postgress/run.sh
RUN cp /workspace/liquibase.properties /
RUN ls -la /workspace
RUN ls -la /
RUN chmod +x /opt/liquibase_postgress/run.sh
CMD liquibase --changeLogFile=/workspace/master-changelog.xml update
