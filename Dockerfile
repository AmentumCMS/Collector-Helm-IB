FROM alpine/helm:3
ENV HELM_PLUGINS="/usr/share/helm/plugins"
COPY ./plugins /usr/share/helm/plugins
# RUN chown -R nobody:nogroup /usr/share/helm/plugins &&\
#     chown -R nobody:nogroup /apps 
#USER nobody
