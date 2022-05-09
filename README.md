<h4>deve-se estar logado via Aws cli com um usuario com permissoes administrativas.</h4>
  
* terraform init
* terraform validate
* terraform fmt
* terraform plan
* terraform apply -auto-approve

Após terminar de subir tudo, leva em torno de 20 minutos, rode o comando abaixo para configurar o kubctl. <br>
* aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)
