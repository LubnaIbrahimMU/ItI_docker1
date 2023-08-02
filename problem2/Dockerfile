FROM ubuntu:latest

# Set the default sleep time to 5 seconds
ENV SLEEP_TIME 5

# Set up the entrypoint script
COPY sleepTime.sh /
RUN chmod +x /sleepTime.sh
ENTRYPOINT ["/sleepTime.sh"]
