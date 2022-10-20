variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "ssh_key" {
  description = "Public SSH Key"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDEGYk7zmUk/zJm4M+rWS5SfxazXN09Y4r6CQfS5rq/pCM6f9aOqGCz2UjJlW/donwkUq10vV9KZOu9EjP0GKpSzsPZMjIGVQA3bpw8dVr6jqGezXMBh1GIkhNR6frDsMHnJctkWCofHZd9WkZD21gwB7dEH2nDX1ktPm8w9vXMLtlkpSFYbFX35IwWab8geMGLvM5KNGc4jHcIfQbktSAJYE2NCI4xi2J7mHQdtgRn1nleGZokuSrchK4++rDmTnOBevWhHihzCmki9zbdwIPJxncYiZdExlLSt0ufU+uIfVqxjWIUitrX1fDKXPNgf2NVXOXNuJgAI5seVKfGy8hX savonarola@motomac.local"
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}
