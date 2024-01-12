# terraform-demo

Hier ein einfaches Terraform setup, wie wir es im Unterricht erarbeitet haben. 

Da terraform.tfvars im echten Leben durchaus sensitive Daten enthalten kann, wird es normalerweise nicht auf github mit gepusht. 
Genau wie ein paar andere Dateien. 
Seht euch hierzu diese Website an: https://github.com/github/gitignore/blob/main/Terraform.gitignore um mehr darüber zu lernen, welche Dateien eines terraform projekts gepushed werden sollten, und welche lieber nicht und folgt nicht meinem schlechten Beispiel :P

Voraussetzung um dieses Terraform Projekt zu benutzen ist die selbstständige Erstellung eines ssh-Schlüsselpaares, 
dessen Name als Variable gesetzt werden muss: 
```ssh-keygen -t rsa -b 2048 -f ~/.ssh/<keyname>```
