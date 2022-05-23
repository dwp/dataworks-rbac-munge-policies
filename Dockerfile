FROM python:3.8-alpine3.10

ENV app_path /usr/src/app
RUN mkdir -p ${app_path}

ADD requirements.txt  ${app_path}
COPY policy_munge/  ${app_path}
RUN pip install -r ${app_path}/requirements.txt -t ${app_path}

WORKDIR ${app_path}

ENTRYPOINT ["python", "${app_path}/__main__.py"]
