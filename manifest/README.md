Exemple de code DSL puppet

tapez git checkout <fonctionnalite>

pour avoir le code source disponible.

Exemple:  git checkout helloworld 

--------------------------------------
Pour l'exemple :  git checkout package
le fichier haproxy.cfg doit être placé dans la directory pour etre copié comme fichier de configuration
de HAProxy
 /etc/puppet/modules
 					 /haproxy
							/files	
								haproxy.cfg
							/manifest		# pour exemple de structure
								init.pp     # exemple
