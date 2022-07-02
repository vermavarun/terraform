
<pre>
Make sure you are login via az login and select subscription using az account set --subscription {subs_id}

terraform init
terraform plan -out main.tfplan
terraform apply -out main.tfplan
terraform graph
terraform destroy

echo "$(terraform output resource_group_name)"
</pre>