# This is a Dockerfile with no executable
# It's a bit silly, as really you should use tarballs normally,
# especially for something this small.
#
# But for much larger data-sets, being able to use Docker Image
# caching pays off, as you just pull when there's a difference.
#
FROM scratch
COPY poems/* /
ENTRYPOINT ["/nonexistent"]

LABEL maintainer="phil pennock"
LABEL comment="public-domain poetry sample data set"
