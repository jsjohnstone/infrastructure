# List of Managed Domains

variable "domains" {
    type = list(string)
    description = "List of domains to generate records for"
    default = [
      "jamiejohnstone.com",
      "jamesjohnstone.co",
      "mesj.co",
      "miej.co",
      "miej.co.nz",
      "miej.co.uk",
      "jamiejohnstone.co.uk"
    ]
}
