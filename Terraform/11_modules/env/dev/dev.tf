module "dev" {
    source      = "../../aks"
    rg_name     = "DevEnvRG"
    rg_location = "eastus"
    acr_name    = "nodevacrt30"
    acr_sku     = "Basic"
    aks_name    = "nodevakst30"
    node_count  = 1
    env         = "dev"
}