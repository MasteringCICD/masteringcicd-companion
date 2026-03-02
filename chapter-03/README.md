# Chapter 3: Encapsulation with Docker and Taskfile

This folder contains the final state of the code after completing Chapter 3.

## Files
- `Dockerfile` — Multi-arch Docker Toolbox image (Alpine-based with Terraform, Taskfile, terraform-docs, TFLint)
- `Taskfile.yml` — Professional Taskfile with all core Terraform tasks
- `.pre-commit-config.yaml` — Pre-commit hooks for automatic formatting and validation
- `.gitignore` — Ignoring sensitive files and build artifacts

## Quick Start

```bash
# Build the Docker Toolbox image
docker build -t terraform-toolbox:local .

# Run tasks inside the container
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task init
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task validate

# Install pre-commit hooks
pre-commit install
```

## The "Golden Loop"
```bash
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task init
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task fmt
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task validate
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task docs
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task plan
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task apply
docker run --rm -v $(pwd):/workspace terraform-toolbox:local task clean
```
