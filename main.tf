module "azure_naming" {
  source = "Azure/naming/azurerm"
  version = "0.3.0"
  prefix                 = var.prefixes
  suffix                 = var.suffixes
  unique-seed            = var.unique-seed
  unique-length          = var.unique-length
  unique-include-numbers = var.unique-include-numbers
}
