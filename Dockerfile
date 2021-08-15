FROM wso2/wso2is:5.10.0

USER root


#COPY ojdbc6-11.2.0.2.0.jar /home/wso2carbon/wso2is-5.11.0/repository/components/lib/

#RUN chown wso2carbon:wso2 /home/wso2carbon/wso2is-5.11.0/repository/components/lib/ojdbc6-11.2.0.2.0.jar
#RUN chmod 777 /home/wso2carbon/wso2is-5.11.0/repository/components/lib/ojdbc6-11.2.0.2.0.jar

RUN chmod -R 755 /home/wso2carbon/wso2is-5.10.0

USER wso2carbon

ENTRYPOINT ["/home/wso2carbon/docker-entrypoint.sh"]


