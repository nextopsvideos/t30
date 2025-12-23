module "qa" {
    source      = "../../aks"
    rg_name     = "QAEnvRG"
    rg_location = "eastus"
    acr_name    = "noqaacrt30"
    acr_sku     = "Standard"
    aks_name    = "noqaakst30"
    node_count  = 1
    env         = "qa"
}