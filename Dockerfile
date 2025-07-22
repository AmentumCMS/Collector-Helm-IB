FROM alpine/helm:3
ENV HELM_PLUGINS="/usr/share/helm/plugins"
COPY ./plugins /usr/share/helm/plugins
RUN echo -e "Listing Helm Plugin Dir:" &&\
    ls -al /usr/share/helm/plugins &&\
    echo -e "\nListing Helm Plugins:" &&\
    helm plugin list &&\
    echo -e "\nHelm Version: $(helm version)"
# RUN chown -R nobody:nogroup /usr/share/helm/plugins &&\
#     chown -R nobody:nogroup /apps 
#USER nobody
