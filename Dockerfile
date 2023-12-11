FROM python:3.8.10
MAINTAINER your_name "mooncy1116@gmail.com"
RUN apt-get update
RUN apt-get install -y python3-pip build-essential
COPY . /pybo
WORKDIR /pybo
#RUN pip install -r requirements.txt
RUN apt-get update  # 패키지 목록 업데이트
RUN apt-get install -y python3-pip  # pip 설치
RUN pip install --upgrade pip

RUN pip install flask
RUN pip install pybo
RUN pip install db
RUN pip install Migrate
RUN pip install SQLAlchemy
#RUN pip install metadata
#ENTRYPOINT ["python"]
#EXPOSE 5000
CMD ["python", "pybo/views/main_views.py"]
