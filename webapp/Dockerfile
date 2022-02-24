FROM 122403041129.dkr.ecr.eu-west-1.amazonaws.com/autosuite-test:webapptest
LABEL maintainer "Tobias Verbeke <tobias.verbeke@openanalytics.eu>"

RUN apt-get update && apt-get install -y python3 python3-pip

# Dash and dependencies
RUN pip3 install dash==0.36.0  # The core dash backend
RUN pip3 install dash-renderer==0.17.0  # The dash front-end
RUN pip3 install dash-html-components==0.13.5  # HTML components
RUN pip3 install dash-core-components==0.43.0  # Supercharged components
RUN pip3 install plotly --upgrade  # Plotly graphing library used in examples

# app dependencies
RUN pip3 install pandas

RUN mkdir /root/content
COPY content/app.py /root/content/.

EXPOSE 8050

WORKDIR /root/content
CMD ["python3", "app.py"]