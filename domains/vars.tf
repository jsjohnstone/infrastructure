# List of Managed Domains

variable "domains" {
    type = list(string)
    description = "List of domains to generate records for"
    default = [
      "jamiejohnstone.com",
      "mesj.co",
      "miej.co",
    ]
}
