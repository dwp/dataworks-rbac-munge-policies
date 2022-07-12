FROM python:3.8-alpine3.16

ENV app_path /usr/src/app
RUN mkdir -p ${app_path}
COPY policy-munge-files/  ${app_path}

RUN pip install -r ${app_path}/requirements.txt
WORKDIR ${app_path}
ENV AWS_DEFAULT_REGION='eu-west-2'
ENTRYPOINT ["python", "policy_munge/__main__.py"]
