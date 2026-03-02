# Use a lean base image
FROM alpine:3.20

# Install dependencies
RUN apk add --no-cache ca-certificates curl unzip bash git

# Define Tool Versions
ARG TERRAFORM_VERSION=1.10.5
ARG TASK_VERSION=3.39.2
ARG TFDOCS_VERSION=0.19.0
ARG TFLINT_VERSION=0.61.0

# Install Terraform (Auto-detect Architecture)
RUN ARCH=$(uname -m | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/') && \
    curl -fsSL https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_${ARCH}.zip -o terraform.zip && \
    unzip terraform.zip && \
    mv terraform /usr/local/bin/ && \
    rm terraform.zip

# Install Taskfile
RUN ARCH=$(uname -m | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/') && \
    curl -fsSL https://github.com/go-task/task/releases/download/v${TASK_VERSION}/task_linux_${ARCH}.tar.gz -o task.tar.gz && \
    tar -xzf task.tar.gz && \
    mv task /usr/local/bin/ && \
    rm task.tar.gz

# Install terraform-docs
RUN ARCH=$(uname -m | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/') && \
    curl -fsSL https://github.com/terraform-docs/terraform-docs/releases/download/v${TFDOCS_VERSION}/terraform-docs-v${TFDOCS_VERSION}-linux-${ARCH}.tar.gz -o tfdocs.tar.gz && \
    tar -xzf tfdocs.tar.gz && \
    mv terraform-docs /usr/local/bin/ && \
    rm tfdocs.tar.gz

# Install TFLint
RUN ARCH=$(uname -m | sed 's/x86_64/amd64/' | sed 's/aarch64/arm64/') && \
    curl -fsSL https://github.com/terraform-linters/tflint/releases/download/v${TFLINT_VERSION}/tflint_linux_${ARCH}.zip -o tflint.zip && \
    unzip tflint.zip && \
    mv tflint /usr/local/bin/ && \
    rm tflint.zip

WORKDIR /workspace

# Verify installation on build
RUN terraform version && task --version && terraform-docs --version && tflint --version
