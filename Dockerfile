FROM wso2/wso2is:latest

USER root

COPY ojdbc6-11.2.0.2.0.jar wso2is-5.11.0/repository/components/lib/

RUN chown wso2carbon:wso2 wso2is-5.11.0/repository/components/lib/ojdbc6-11.2.0.2.0.jar
RUN chmod 777 wso2is-5.11.0/repository/components/lib/ojdbc6-11.2.0.2.0.jar

USER wso2carbon

ENTRYPOINT ["/home/wso2carbon/docker-entrypoint.sh"]


