# Use Python 3.9 image from the Lambda Runtime
FROM public.ecr.aws/lambda/python:3.9

# Install requirements
COPY ./app/requirements.txt /var/task/requirements.txt
RUN pip install --no-cache-dir -r /var/task/requirements.txt

# Copy application to /var/task
COPY ./app /var/task

# Create Lambda handler
CMD ["main.handler"]
