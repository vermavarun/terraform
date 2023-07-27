
<pre>
Make sure you are login via az login and select subscription using az account set --subscription {subs_id}

terraform init
terraform plan -out main.tfplan
terraform apply "main.tfplan"
terraform graph
terraform destroy -auto-approve

echo "$(terraform output resource_group_name)"
</pre>