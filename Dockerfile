FROM alpine/helm:3
ENV HELM_PLUGINS="/usr/share/helm/plugins"
COPY ./plugins /usr/share/helm/plugins
RUN echo -e "\nListing Helm Plugin Dir:" &&\
    ls -1 /usr/share/helm/plugins &&\
    echo -e "\nSize of Helm Plugins:" &&\
    du -chd1 /usr/share/helm/plugins &&\
    echo -e "\nListing Helm Plugins:" &&\
    helm plugin list &&\
    echo -e "\nHelm Version:\n$(helm version)\n"
# RUN chown -R nobody:nogroup /usr/share/helm/plugins &&\
#     chown -R nobody:nogroup /apps 
#USER nobody
