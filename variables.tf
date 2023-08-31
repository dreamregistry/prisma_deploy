variable "dream_env" {
  description = "dream app environment variables exported by packages"
  type        = any
  default     = {
    POSTGRES_URL = "postgresql://basilisk:basilisk@localhost:5432/basilisk"
  }
}

variable "dream_project_dir" {
  description = "root directory of the project sources"
  type        = string
  default = "/Users/jonatan/dev/business/hereya/poc/movies-remix"
}
