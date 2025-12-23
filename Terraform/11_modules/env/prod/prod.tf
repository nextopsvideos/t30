module "prod" {
    source      = "../../aks"
    rg_name     = "ProdEnvRG"
    rg_location = "westus"
    acr_name    = "noprodacrt30"
    acr_sku     = "Premium"
    aks_name    = "noprodakst30"
    node_count  = 2
    env         = "prod"
}