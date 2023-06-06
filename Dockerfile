# Base image
FROM ubuntu:22.04

# Working directory, Streamlit does not work at root
WORKDIR /app

# Copy the dependencies file to the working directory
COPY .github .github
COPY src src
COPY .gitattributes .gitattributes
COPY requirements.txt packages.txt /app/

# Install Python
RUN apt update -y
RUN apt install -y python3-pip python-dev-is-python3 build-essential

# Install dependencies
RUN pip install -r requirements.txt && \
    DEBIAN_FRONTEND=noninteractive xargs apt install -y < packages.txt

# Run ResuLLMe with Streamlit
CMD streamlit run Main.py --server.port=8050 --server.address=0.0.0.0 --logger.level error
