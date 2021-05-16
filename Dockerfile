FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install git
COPY clone_run_code.sh /tmp/clone_run_code.sh
COPY print_args.py /tmp/print_args.py 
WORKDIR /tmp

ENTRYPOINT ["sh", "clone_run_code.sh"]
CMD ["https://github.com/tanle2694/docker_without_source", "master", "echo Hello"]

