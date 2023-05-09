FROM postgres

RUN apt-get update && \
    apt-get install -y python3 python3-pip libpq-dev python-dev && \
    pip3 install xlrd psycopg2-binary
WORKDIR /home/mosip/repos/db_upgrade_scripts

COPY ./repos/commons/db_upgrade_scripts .
COPY ./repos/pre-registration/db_upgrade_scripts .
COPY ./repos/registration/db_upgrade_scripts .
COPY ./repos/id-repository/db_upgrade_scripts .
COPY ./repos/id-authentication/db_upgrade_scripts .
COPY ./repos/partner-management-services/db_upgrade_scripts .
COPY ./repos/admin-services/db_upgrade_scripts .
COPY ./repos/keymanager/db_upgrade_scripts .
COPY ./repos/audit-manager/db_upgrade_scripts .

ENV MOSIP_DB_NAME=
ENV DB_SERVERIP=
ENV DB_PORT=
ENV SU_USER=postgres
ENV SU_USER_PWD=
ENV SYS_ADMIN_USER=
ENV SYS_ADMIN_PWD=
ENV DEFAULT_DB_NAME=postgres
ENV DBUSER_PWD=
ENV CURRENT_VERSION=
ENV UPGRADE_VERSION=
ENV ACTION=

CMD cd $MOSIP_DB_NAME; bash upgrade.sh ; \
  echo Upgrade script execution completed for $CURRENT_VERSION to $UPGRADE_VERSION version. Please check the above logs for any kind of issues, Warnings and details of execution. ; \
