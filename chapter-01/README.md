# Chapter 1: Version Control and IaC Basics

This chapter is primarily conceptual and does not contain a hands-on lab project.

The HCL snippets shown in the chapter are illustrative examples of declarative infrastructure:

```hcl
# Example of declarative HCL representing architecture
resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "MasteringCICD-Web"
  }
}
```

## Key Takeaways
- Infrastructure as Code (IaC) treats the cloud as a Git-managed, declarative system.
- HCL is a Domain-Specific Language (DSL) that bridges human-readable architecture and machine-parsable code.
- Idempotency ensures that running the same code multiple times produces the same result.

Proceed to [Chapter 2](../chapter-02/) to start building your Terraform project.
