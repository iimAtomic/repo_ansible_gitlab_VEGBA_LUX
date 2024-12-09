En amont, connectez vos machines en ssh avec l'echange de clés ssh.  
  
Ensuite, modifiez l'ip du fichier inventory.yaml en la remplacant par l'ip de la machine de déploiement.  
  
Pour tester le deploiement avec Ansible uniquement, lancez la commande "**ansible playbook main.yaml -i inventory.yaml**"  
  
Pour tester le deploiement avec Docker, lancez la commande "**ansible-playbook deploy.yaml -i inventory.yaml**"  
  
Ensuite, vous rentrez dans le container nouvellement crée après le déploiement avec la commande "**docker exec -it gitlab bash**" puis vous recuperez l'ip de container avec "**hostname -I**"  
  
Si tout fonctionne, vous ajoutez dans votre /etc/hosts les 2 ips avec le nom de domaine gitlab comme ceci :  
  

*   IP1 gitlab.vlne.lan

  

*   IP2 gitlab.vlne.lan
