# Proyecto final de grado superior David Moya Durán

Introducción
Objetivo:
El objetivo principal de este proyecto en un primer momento era montar en un pequeño servidor como puede ser una raspberry pi alojando una página web todo esto realizado como se ha dado en los módulos impartidos en clases siguiendo los pasos: 

Instalación de sistema operativo
Instalación de paquetería por comandos 
Configuración de los servicios 
Pruebas

Dado que en el transcurso de las prácticas he ido trabajando con distintas tecnologías como son docker, kubernetes, ansible, etc y puesto que el coste actual de las rasperry es demasiado elevado por la gran demanda de chips he decidido hacerlo de otra manera dado el ahorro en costos y tiempos se realizará a través de un servicio en la nube como puede ser digital ocean, aws, azure, google y con las tecnologías usadas en mis prácticas.

Justificación:
Después de mucho pensar en que proyecto realizar me decante por hacer lo antes mencionado, soy una persona con un perfil enfocado a sistemas más que a la programación, por ello mi proyecto lo he querido enfocar a lo que más me gusta y a lo que me quiero dedicar, añadir que cuando haces algo que te gusta lo haces con ganas, te peleas cuando no te sale y lo mejor de todo la satisfacción que te da cuando lo consigues, al contrario de cuando eliges un proyecto el cual no te motiva, al final lo terminas haciendo pero no con las mismas ganas e ilusión haciéndolo finalmente peor. 

Me he decantado por estas tecnologías ya que antes no las había usado, casi ni escuchado si no fuese por la videollamada que tuvimos con un antiguo alumno del ciclo, gracias a las prácticas me he podido aventurar y trabajar con ellas, aunque me queda mucho camino por delante con estas tecnologías y no se ni una cuarta parte de todo porque tres meses no dan para mucho creo que la mejor manera de empezar es haciendo mi propio proyecto para así afianzar conceptos.

Conocimientos adquiridos al realizar el proyecto:
Trás realizar no solo el proyecto, sino también las prácticas ( sin ellas no me hubiera decantado por realizar este tipo de proyecto), lo principal que he sacado de todo esto es si quieres hacer algo y hay una forma más sencilla, una forma de que a la larga te dé menos problemas y quebraderos de cabeza hazlo de esa manera. Todo evoluciona y se moderniza y aunque haya gente que lleva estancada en windows xp desde hace años otros se han dedicado a cómo podemos montar una infraestructura informática de una manera más sencilla, más segura y de una forma más rápida, esto es el futuro así que me da una gran satisfacción haber metido la cabeza en este tipo de tecnologías como son docker, kubernetes, github, la nube y todas las que vamos a ir mencionando en este proyecto. 

Conceptos previos
Para este proyecto haremos uso de distintas tecnologías las cuales os voy a ir explicando brevemente en este apartado de conceptos previos para que así posteriormente podáis entender el proyecto, en cada apartado del proyecto haremos más hincapié en cada tecnología haciendo una explicación más extensa dando explicaciones de instalación y uso.
Ansible
Es un software que nos permite la automatización del aprovisionamiento de software, gestión de software y despliegue de aplicaciones.

Como bien sabéis en este grado superior tenemos el módulo orientado a sistemas enfocado a la administración de servidores por línea de comandos lo cual puede ser viable para una infraestructura sencilla, pero imaginaros tener que hacer la misma configuración en 10 servidores distintos, ya no os digo si fuesen 100. Podríamos hacer una clonación de ellos pero no es una opción viable después de que veamos el funcionamiento de ansible en la siguiente imagen:


Tenemos un controlador desde donde se mandarán las instrucciones a los nodos controlados por SSH, estos servidores podemos tenerlos en una red local o bien en la nube, solo deberemos tener acceso a ellos.

Los conceptos principales que serían: 
Playbook: Aquí es donde indicaremos qué configuraciones queremos hacer en los servidores.
Inventario: No es más que hacer referencia a los servidores pudiendolos agrupar para luego a la hora de ejecutar un playbook hacer referencia de esos grupos.

Ambos conceptos se escriben en un archivo .yaml el cual ejecutaremos con el comando ansible, teniendo en cuenta que este tipo de conexiones con los servidores se hacen mediante ssh como hemos comentado anteriormente.

En este proyecto no haremos uso de esta tecnología dado que es algo que a día de hoy no se está usando tanto, pero hago llamamiento a este tipo de herramienta para que podáis comprender las facilidades que nos da el uso de las siguientes tecnologías de las cuales vamos a hablar más adelante y en las que están basadas este proyecto.

Docker
Crear contenedores ligeros y portables para las aplicaciones software que puedan ejecutarse en cualquier máquina con Docker instalado, independientemente del sistema operativo que la máquina tenga por debajo, facilitando así también los despliegues.

Nada más con esta pequeña definición de lo que es, podemos ver las facilidades que nos da, ponemos el mismo ejemplo de antes quiero montar 10 servidores con la misma configuración y el proceso sería el siguiente:
Bien, tenemos 10 equipos físicos o creamos 10 máquinas virtuales.
Instalamos en esas 10 máquinas los sistemas operativos
Configuramos cada máquina o hacemos uso de ansible para no tener que ir una a una.

Con docker todo esto se hace de una forma mucho más rápida y más ligera, podríamos crear nuestra propia imagen de docker si queremos una configuración específica pero posiblemente lo que necesitemos ya lo haya creado otra persona en el propio repositorio de docker o bien en github. Una vez tenemos esa imagen podemos levantar 10 containers en una misma máquina sin esa necesidad de tener “x máquinas virtuales o equipos”, si no necesitamos hacer uso de esos contenedores se pueden parar en cualquier momento para no consumir recursos y lo mejor de todo, este proceso tarda minutos.

Docker-compose
Otro concepto de docker es docker-compose, esta herramienta nos facilita mucho el trabajo con docker, nos sirve para poder definir y ejecutar aplicaciones docker multicontenedor a partir de archivos yaml, de esta forma es más sencillo crear contenedores que se relacionen entre sí, habilitar puertos, volúmenes, etc. Todo esto pudiendo ejecutarlo en un solo comando.

Con todo esto que hemos hablado de ansible, docker ya nos hace montar una infraestructura de una manera mucho más sencilla que como se hacía o hemos hecho en el ciclo, no hago crítica de ello dado que lo primero es tener una base de todas las materias que hemos ido tocando a lo largo de estos dos años puesto que si no, no seríamos capaces de entender ninguna de las tecnologías de las que estamos hablando en este proyecto, aun teniendo ansible y docker seguimos teniendo la necesidad de tener que estar pendiente de que si se cae un servidor por ejemplo debemos levantarlo nosotros mismos lo que serían las famosas guardias y de ahí surge kubernetes.

Kubernetes
A medida que las aplicaciones crecen para abarcar varios contenedores implementados en varios servidores, administrarlas se hace también cada vez más complejo. Para controlar esta complejidad, Kubernetes proporciona una API de código abierto que controla la forma y el lugar donde se ejecutan esos contenedores.

Kubernetes organiza los clústeres de máquinas virtuales y programa los contenedores para que se ejecuten en esas máquinas en función de los recursos de proceso disponibles y de los requisitos de recursos de cada contenedor. Los contenedores se agrupan en pods (la unidad operativa básica de Kubernetes) que se pueden escalar hasta el estado deseado.

Kubernetes también administra automáticamente la detección de servicios, incorpora equilibrio de carga, realiza un seguimiento de la asignación de recursos y los escala en función del uso de la capacidad de proceso. Además, comprueba el estado de los recursos individuales y permite que las aplicaciones se recuperan automáticamente reiniciando o replicando los contenedores.
Cloud
Podemos denominarlo como cloud computing, pero popularmente se le llama cloud al suministro de archivos o recursos a petición del usuario a través de una conexión a internet. Como casi cualquier conexión hay un solicitante (el usuario) y un receptor (el servidor), el solicitante pide un recurso a través de su aplicación y el receptor se lo proporciona.
GitHub
Github es un portal creado para alojar el código de las aplicaciones de cualquier desarrollador.  La plataforma está creada para que los desarrolladores suban el código de sus aplicaciones y herramientas, y que como usuario no sólo puedas descargarte la aplicación, sino también entrar a su perfil para leer sobre ella o colaborar con su desarrollo.

Git es uno de estos sistemas de control, que permite comparar el código de un archivo para ver las diferencias entre las versiones, restaurar versiones antiguas si algo sale mal, y fusionar los cambios de distintas versiones.
Comienzo de proyecto
GitHub
Introducción
En este tipo de proyectos que normalmente suelen ser en equipo puesto que trabajan conjuntamente administradores de sistemas (Devops), Desarrolladores, Diseñadores y el equipo que pueda haber por detrás se hace uso de GitHub. Este proyecto va a ser una mini reproducción de lo que sería un entorno de trabajo como este así que se hará uso de github para hacerlo lo más realista posible y por la comodidad que nos ofrece hacer uso de él.
Configuración
		Configuración de cuenta GitHub

Lo primero que deberemos hacer será crearnos una cuenta de github que es de lo más sencillo, deberemos ir a la página web https://github.com/ y registrarnos.

Aquí deberemos crearnos nuestro repositorio en el cual vamos a trabajar dándole a new. 
Nos llevará a esta siguiente ventana donde deberemos elegir el nombre que va a tener nuestro repositorio y si queremos que sea público o privado. Una vez hecho esto deberemos dar click en create repository.

Si ahora damos click en code nos saldrá el https para poder clonar nuestro repositorio y así trabajar con él en VSCode por ejemplo.


Instalación de Paquete Git
Para hacer uso de git deberemos instalar el paquete de git que no es más que una simple instalación con el siguiente comando: 
apt-get install git

Una vez hecho esto ya podremos clonar nuestro repositorio con el comando git clone:

Una vez clonado el repositorio tenemos distintos comandos principales: 

git add: Si añadimos un nuevo archivo deberemos hacer uso de esto para añadirlo a nuestro github como en este caso que hemos creado una nueva carpeta llamada Terraform que usaremos más adelante:



git commit: Las confirmaciones son las unidades fundamentales de los componentes básicos de la línea de tiempo de un proyecto de Git . Las confirmaciones se pueden considerar como instantáneas o hitos a lo largo de la línea de tiempo de un proyecto de Git


git push: Esto lo haremos una vez realizado el commit para subir los cambios a nuestro repositorio.



git pull: Como hemos comentado antes esto se usa en equipo por lo tanto esto lo que hace es actualizarnos los datos que tenemos localmente con los que están actualizados en el propio repositorio. 

git merge: actualiza los datos de la rama actual con la rama que decidamos nosotros.

Almacenamiento en la nube
Introducción
A continuación vamos a implantar nuestra infraestructura en la nube o cloud como queramos llamarlo, para ello vamos a usar nuestra cuenta de digitalocean, a su vez haremos uso de terraform para poder implementar la infraestructura como código. Esto se hace para simplificar el trabajo a la hora de querer escalar nuestra infraestructura dado que desde el entorno gráfico que disponemos en la web sería demasiado tedioso crear varios cluster a la vez, imaginaros, crear cien uno a uno a crearlos dándole a un solo botón.
Digital ocean
Tenemos muchas empresas que nos dan este tipo de servicios como pueden ser Amazon, Google, Azure, etc puesto que estoy más familiarizado con DigitalOcean en este proyecto vamos a hacer uso de él y aquí vamos a ver como configurar nuestra cuenta de DigitalOcean:

Creación de cuenta DigitalOcean:	
Para ello deberemos irnos a la web www.digitalocean.com, una vez estemos en ella deberemos irnos Sing Up  para crearnos la cuenta.  






Una vez estemos en esta pestaña en mi caso haré el registro con google para mayor facilidad.


En la siguiente ventana deberemos elegir el método de pago dado que deberemos hacer un pequeño pago de 5$ para activar la cuenta, después de esto nos darán 100$ de forma gratuita para gastar durante un periodo de prueba de 60 días.







Ya tendremos creada nuestra cuenta, aunque nos vamos a centrar en kubernetes tenemos infinidad de herramientas de las cuales podemos hacer uso.



Creación de cluster de kubernetes:
Deberemos irnos a el apartado de kubernetes donde deberemos clickar en la opción de Create a Kubernetes Cluster.




Aquí tendremos la posibilidad de elegir que data center, que versión de kubernetes, el tipo de máquina virtual que queremos, si queremos que sea un servidor con alta disponibilidad y el nombre que queremos ponerle a nuestro cluster. También nos saldrá información sobre el precio mensual según vayamos modificando las especificaciones. Finalmente le daremos a crear cluster: 


Una vez hecho todo esto ya tendremos creado nuestro nuevo cluster de kubernetes.


Cómo conectarnos a nuestro cluster para administrarlo
Para administrar nuestro cluster ya sea mediante comandos, con terraform o cualquier tipo de herramienta deberemos configurarlo en nuestro equipo de la siguiente manera: 
	Instalación de doctl 
Este es el cliente de digital ocean el cual una vez instalado haremos uso de él para insertar nuestra autenticación.

Para ello podemos hacer uso de la documentación que nos aporta digitalocean pero los comandos serán los siguientes:


Con este comando siguiente lo que haremos será descargarnos el binario comprimido:
cd ~
wget https://github.com/digitalocean/doctl/releases/download/v1.76.0/doctl-1.76.0-linux-amd64.tar.gz

Después extraemos el binario con el siguiente comando:
tar xf ~/doctl-1.76.0-linux-amd64.tar.gz

Una vez lo tengamos extraído deberemos copiarlo a la siguiente ruta:
sudo mv ~/doctl /usr/local/bin

Una vez hecho todos estos pasos ya podremos hacer uso del cliente de digital ocean. El siguiente paso será irnos a la web de digitalocean, en el apartado de kubernetes deberemos irnos a conexión a kubernetes y copiar lo siguiente:
doctl kubernetes cluster kubeconfig save 566e54f9-f2ab-422d-a0a0-a2e912351fe6

Una vez copiemos este comando a nuestra terminal nos pedirá el token que hemos generado aquí.

Una vez hecho estos pasos podremos hacer uso de nuestro cluster de kubernetes a través de comandos o con lens.




Creación de token
El token lo usaremos como si fuera nuestra clave para poder autenticarnos. Lo crearemos de la siguiente manera:

En el panel izquierdo deberemos hacer click en API


Una vez estemos aquí deberemos dar click en generate new token:


Elegimos el nombre que queremos darle a nuestro token y damos click en generate token. Deberemos copiarlo ya que una vez se refresque la página o la cerremos no aparecerá, no es algo grave dado que podemos regenerar o crear uno nuevo sin problemas.

dop_v1_dd74b12882fa907660ac0921cbc207813afb2ec373a4672a45a58bb2125063d7



Terraform

Con terraform tenemos la posibilidad de crear nuestros propios cluster e infinidad de configuraciones con un solo click, a esto se le llama infraestructura como código que a la hora de escalar nuestra infraestructura es mucho más cómodo puesto que usando la interfaz que nos proporciona digitalocean o cualquier otro cloud nos llevaría demasiado tiempo y el tiempo es oro.
	Instalación
Para la instalación nos iremos a la página oficial de terraform donde nos encontraremos con la siguiente ventana donde nos dará los pasos para la fácil instalación de terraform.
https://www.terraform.io/downloads 



	Archivos de configuración
Tendremos un archivo main.tf, provider.tf y por último un archivo variables.tf

main.tf:  En este deberemos escribir el tipo de recurso que queremos crear, en nuestro caso será un cluster de kubernetes a todo esto le ponemos variables para así poder reutilizar el código en cualquier lugar que necesitemos.


provider.tf: En este archivo lo que haremos será configurar nuestro proveedor a su vez configuramos el cloud donde se guardará el estado en el que se encuentra, esto se hace para que no haya fallos si varias personas quieren ejecutar al mismo tiempo. Tenemos una variable local llamada digitalocean_token donde añadiremos el token de antes.



variables.tf: Aquí es donde iremos añadiendo las variables que hemos ido mostrando en los demás archivos, esto se hace para reutilización de código parametrizando todos los datos.


Para finalizar deberemos hacer uso del comando de terraform el cual nos creará el cluster de kubernetes de la misma forma que lo creamos de manera manual en digital ocean.

Con el comando terraform init iniciaremos terraform para ver que no hay ningún error y descargue todo lo necesario de nuestro proveedor.


 Lo próximo que haremos será crear el nuevo cluster con terraform apply  que ya si nos creará el cluster.

Como podemos ver coge los parámetros que hemos ido poniendo en values.tf


Comprobamos que todo está bien deberemos escribir yes:



Aquí es cuando empieza a crearse el cluster que podemos comprobarlo en digitalocean si queremos: 

Y como podemos ver en terraform cloud tenemos el estado en aplicando:

Si quisiera otra persona ejecutar algo en este cluster le daría error como podemos ver aquí:




Kubernetes 

Introducción
El concepto de kubernetes ya lo tenemos pero vamos a entrar un poco más en detalle sobre qué es y qué componentes lo conforman que son los siguientes:

Plano de control: conjunto de procesos que controlan los nodos de Kubernetes. Es donde se originan todas las asignaciones de tareas.

Nodos: máquinas que ejecutan las tareas solicitadas que asigna el plano de control.

Pod: grupo de uno o más contenedores implementados en un solo nodo. Todos los contenedores de un pod comparten la dirección IP, la IPC, el nombre de host y otros recursos. Los pods extraen la red y el almacenamiento del contenedor subyacente, lo cual le permite trasladar los contenedores en el clúster con mayor facilidad.
Controlador de replicación: controla la cantidad de copias idénticas de un pod que deben ejecutarse en algún lugar del clúster.

Servicio: separa las definiciones de las tareas de los pods. Los proxies de servicios de Kubernetes envían las solicitudes de servicio al pod correspondiente de forma automática, sin importar a dónde se traslade en el clúster ni si se lo reemplaza

Kubelet: este servicio se ejecuta en los nodos y se encarga de leer los manifiestos del contenedor y de garantizar el inicio y el funcionamiento de los contenedores definidos.

Kubectl: es la herramienta de configuración de la línea de comandos de Kubernetes.

Kubernetes sigue usando contenedores de docker pero lo que lo diferencia principalmente es que se autogestiona y haciendo las cosas bien no tiene porque haber un técnico de guardía como se ha hecho desde siempre, por lo que nos da un plus de tranquilidad y seguridad a la hora de montar una infraestructura con este tipo de tecnología.

Instalación de cliente kubectl
Para administrar cluster de kubernetes deberemos tener instalado el cliente de kubernetes, para ello nos vamos a la documentación oficial donde nos darán los pasos a seguir https://kubernetes.io/es/docs/ 
La instalación se hace de la siguiente manera:
Ejecutamos el siguiente comando que nos descarga kubectl:

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

Con el siguiente comando lo instalaremos:

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

Con estos dos comandos ya tendremos instalado el cliente de kubectl para poder administrar nuestro cluster.
 
 


Uso de kubectl
Tenemos muchas maneras de usar este comando pero las más importantes son:

Ver o buscar recursos: con el uso de get podremos buscar información sobre los pods, nodes, services, pvc, etc como podemos ver a continuación: 


Editar recursos: podemos editar recursos con el siguiente comando kubectl edit nombredelrecurso

Escalar recursos: con el comando kubectl scale podremos escalar la infraestructura que ya tenemos montada.

Eliminar recursos: con el comando kubectl delete podemos eliminar cualquier recurso que hayamos creado

Crear objetos: 
Si queremos crear un pod con “x” configuración para ello deberemos crear un archivo .yaml como este que vemos abajo, una vez lo tengamos con todas las configuraciones podremos ejecutar el siguiente comando: kubectl apply -f deployment.yaml

Con esto conseguiremos levantar un pod con las siguientes características.

En nuestro caso vamos a hacer uso de la tecnología de helm que veremos ahora, dado que nos aporta muchas mejoras a la hora de implementar el proyecto.


Helm
		¿Qué es?
Qué mejor forma que irnos a la página oficial de helm y lo primero que nos dice es:

Helm te ayuda a administrar las aplicaciones de Kubernetes - Los Charts de Helm te ayudan a definir, instalar y actualizar incluso la aplicación de Kubernetes más compleja.

Los Charts son fáciles de crear, versionar, compartir y publicar - así que comienza a utilizar Helm y deja de copiar y pegar.

Como bien dice podemos crear, compartir, etc pero en nuestro caso para simplificar la explicación vamos a usar la biblioteca de charts que nos ofrecen y así llevar a cabo nuestro proyecto de una forma más amena. 

En implementaciones para aplicaciones propias de empresas sí que deberemos crear nosotros mismo nuestros propios charts pero en este caso y en la inmensa mayoría podremos hacer uso de estas librerías para como bien dice “comienza a utilizar Helm y deja de copiar y pegar” 
		Instalación
Para la instalación de helm como en otras ocasiones nos iremos a la documentación oficial https://helm.sh/es/docs/intro/install/ 


Debemos irnos a descargar la versión deseada que nos llevará a un repositorio de github donde nos mostrará los archivos de descarga según nuestro sistema operativo, en nuestro caso haremos uso de linux amd64: 

Una vez dado click se nos descarga un archivo comprimido que deberemos descomprimir luego con el comando: tar -zxvf helm-v3.0.0-linux-amd64.tar.gz

Una vez tengamos descomprimido el binario deberemos hacer el siguiente comando para hacer uso de helm: mv linux-amd64/helm /usr/local/bin/helm

Uso
Creación de chart propio
Para ello haremos uso del comando helm create [nombre chart], esto nos creará una estructura básica como ejemplo:



Chart.yaml: Contiene la descripción del chart. Esta información es accesible desde un template.

charts/ puede contener otros chart, que llamaremos subcharts.

templates/: Es el directorio para los ficheros template y donde se lanza internamente el motor de renderización de templates.(NOTES.txt, helpers.tpl y tests/ están fuera del alcance de este post. 

deployment.yaml y service.yaml son manifests creados por defecto y que usaremos como punto de partida para crear el chart. ingress.yaml lo podemos borrar, ya que nuestro ejemplo no usa ingress.
Instalación de chart
Como ya sabemos podemos crear nuestros propios charts o buscarlos en el repositorio en este caso vamos a hacer la instalación de un chart propio como es el que hemos creado anteriormente. Primero deberemos empaquetar este chart haciendo uso del comando helm package, esto nos creará un archivo comprimido:


Para hacer la instalación de este archivo empaquetado deberemos usar el siguiente comando helm3 install test ./test-0.1.0.tgz

Una vez hecho esto podemos ver con un kubectl get pods que se ha instalado nuestro chart:


Desinstalación de chart
Con el mismo ejemplo de antes para desinstalar este chart deberemos hacer uso del siguiente comando helm uninstall test deberemos tener en cuenta que tenemos que estar en el mismo namespace en el que lo creamos, en este caso creamos uno nuevo para ello llamado test.

Como podemos ver si realizamos un kubectl get pods de nuevo ya se habrá eliminado.

Repositorio helm
Tenemos el repositorio de helm donde podremos encontrar infinidad de aplicaciones, para acceder a él lo haremos de la siguiente manera, desde la página oficial https://helm.sh/ y dar click en charts que nos redirigirá a otra página https://artifacthub.io/  :




Aquí dado que nuestro proyecto irá basado en wordpress podemos buscarlo:

Haciendo click en él tendremos mucha información, como hacer la instalación, añadir el repositorio a nuestro sistema, los valores por defecto que tiene nuestro chart, versiones y un largo en lo que vamos a entrar en detalle ahora mismo dado que lo haremos más tarde con lens de una forma mucho más gráfica.


Lens
		¿Qué es?
Kubernetes Lens es un IDE de código abierto muy eficaz para Kubernetes. Lens simplifica el trabajo con Kubernetes al ayudar a administrar y monitorear clústeres en tiempo real y de una manera más gráfica que por línea de comandos.

Administrar clústeres en Kubernetes puede ser bastante difícil, Lens nos aporta ayudas como poder trabajar en múltiples clusters, la posibilidad de configurar, cambiar y redirigir clústeres con un solo clic, también organiza y nos muestra todo el sistema de trabajo en el clúster mientras proporciona métricas. Con toda esta información, podemos aplicar cambios de una manera fácil y rápida con más confianza.
Instalación
Una vez más deberemos ingresar en la página oficial de lens https://k8slens.dev/ donde en la primera página nos mostrará en enlace a descarga.

Hacemos click en descargar y se descargara nuestro archivo para proceder a la instalación. Damos click en el ejecutable y se instalará de manera automática en el caso de hacerlo desde linux, en el caso de hacerlo desde windows se nos abrirá un desplegable en el cual deberemos ir dando a siguiente.

En la primera ejecución del programa nos pedirá ingresar con un id de lens, también nos da la opción de configurarlo con github que será lo que haremos en este caso.


Se nos abrirá una ventana en el explorador donde deberemos iniciar sesion con github, una vez hayamos iniciado sesión se redirige a esta página siguiente donde deberemos dar click en abrir lens:


Esto hará que se inicie sesión en lens con nuestra cuenta de github como podemos comprobar en la siguiente imagen:


Uso
Configuración de clúster
Para la configuración de nuestro cluster, deberemos irnos a categories >> clusters como podemos comprobar no tenemos aún ninguno configurado.

En esta misma ventana tendremos un símbolo de + donde deberemos dar click para configurarlo:
  

Una vez demos click se nos abrirá el explorador de archivos donde deberemos seleccionar nuestro archivo kubeconfig, esto lo encontraremos en nuestra cluster de digital ocean de la siguiente manera: 

Iniciamos sesión en digitalocean y deberemos irnos a kubernetes donde deberemos entrar en nuestro cluster:


Aquí tendremos un apartado de configuración donde podremos descargar este archivo:



Una vez descargado seguimos con el proceso de configuración en Lens nos quedamos en el siguiente paso:

Se nos abre el explorador donde deberemos elegir el fichero que hemos descargado de la siguiente manera: 

Una vez seleccionado damos en sync así ya tendremos nuestro cluster configurado en lens:

Teniendo acceso a todo lo que tengamos levantado en kubernetes como pueden ser los pods de wordpress y mysql del proyecto:

Manejo
En esta parte hablaremos brevemente de los apartados que incluye helm, brevemente dado que helm nos daría para hacer un proyecto explicando cada función. Tenemos estas distintas pestañas:
				Nodes:
En este apartado podremos ver los nodos que tenemos en nuestro cluster configurado con toda su información y parámetros como podemos ver en la siguiente captura:


				Workloads: 
Este apartado va enfocado a las cargas de trabajo, dividiéndolo en varios apartados como son:
Overview: Nos da un breve resumen de lo que ocurre en nuestro cluster, cuantos pods tenemos levantados, deployments, etc.



Pods: Aquí veremos los pods que tenemos levantados.



Deployments: Nos informa de que tenemos implementado en nuestro cluster.



DaemonSets: Garantiza que todos (o algunos) de los nodos ejecuten una copia de un Pod. Conforme se añade más nodos al clúster, nuevos Pods son añadidos a los mismos. Conforme se eliminan nodos del clúster, dichos Pods se destruyen. Al eliminar un DaemonSet se limpian todos los Pods que han sido creados. 




StatefulSets: Gestiona el despliegue y escalado de un conjunto de Pods, y garantiza el orden y unicidad de dichos Pods.



ReplicaSets: mantiene un conjunto estable de réplicas de Pods ejecutándose en todo momento. Así, se usa en numerosas ocasiones para garantizar la disponibilidad de un número específico de Pods idénticos.
					

Jobs:  Crea uno o más Pods y se asegura de que un número específico de ellos termine de forma satisfactoria. En nuestro caso no tendremos pero os pongo una captura de otro cluster en el que sí tenemos.



CronJobs: Un objeto CronJob es como una línea de un archivo crontab (tabla cron). Ejecuta un trabajo de forma periódica según un horario programado escrito en formato Cron.


				Configuration:
Config Maps: es un objeto de la API utilizado para almacenar datos no confidenciales en el formato clave-valor. Los Pods pueden utilizar los ConfigMaps como variables de entorno, argumentos de la linea de comandos o como ficheros de configuración en un Volumen.

Secrets:  te permiten almacenar y administrar información confidencial, como contraseñas, tokens OAuth y llaves ssh. Poniendo esta información en un Secret es más seguro y más flexible que ponerlo en la definición de un Pod o en un container image.

Resource Quotas: se puede configurar para limitar la cantidad total de recursos que se pueden consumir. Si se usa en conjunto con namespaces, puede evitar que un equipo acapare todos los recursos.

Limit Ranges:  es la política que permite: Imponer restricciones de requisitos de recursos a Pods o Contenedores por Namespace. Imponer las limitaciones de recursos mínimas/máximas para Pods o Contenedores dentro de un Namespace.

HPA:  nos permite variar el número de pods desplegados mediante un replication controller o un deployment en función de diferentes métricas.

Pod Disruption Budgets:  definen el mínimo número de pods que deben estar ejecutándose en todo momento para asegurar la disponibilidad de la aplicación durante operaciones de mantenimiento efectuadas sobre los nodos por los administradores del clúster.

				Network:
Incluye opciones para administrar sus servicios de red como services, endpoints, ingresses, and network policies.
Services: es el objeto de la API de Kubernetes que describe cómo se accede a las aplicaciones, tal como un conjunto de Pods, y que puede describir puertos y balanceadores de carga.


Endpoints: Es un recurso que obtiene las direcciones IP de uno o más pods que se le asignan dinámicamente, junto con un puerto.


Ingresses: Un objeto API que gestiona el acceso externo a los servicios en un clúster, normalmente HTTP. En nuestro caso no tendremos.


Network Policies: controlar el flujo de tráfico en la dirección IP o el nivel de puerto. En nuestro caso no tendremos.

Port Forwarding: para acceder a las aplicaciones en un clúster. En nuestro caso no tendremos.


				Storage: 
Aquí podemos ver todos los volúmenes que podemos administrar de nuestro cluster. Este apartado se divide en:

	Persistent Volume Claim:
Es la solicitud por parte del usuario. Ejemplo: Yo como cliente hago referencia que quiero 80G de almacenamiento para mi base de datos mysql (esto sería persistent volumen) una vez creado se le llama Persistent Volumen como veremos ahora.



	Persistent Volumen:
Como comentamos antes una vez creado el volumen, aquí es donde podremos encontrarlo.


	Storage classes:
Aquí hablamos del tipo de almacenamiento, en caso de digitalocean solo tiene este tipo de almacenamiento, en otros proveedores tenemos otros tipos de almacenamiento.

				Namespaces: 
Aquí podremos ver los namespaces que tenemos creados, esto se podría definir como espacios de trabajo donde tendremos siempre los por defecto que trae kubernetes más los que nosotros creemos, un ejemplo sería cuatro namespace, prod + staging + preprod + monitoring:


Instalación de chart
Como hemos hablado en el apartado de helm, nos sirve para instalar charts de una forma más fácil con un repositorio bastante extenso, con lens tenemos la posibilidad de hacerlo de una manera mucho más sencilla y modificando valores de una manera más gráfica. Para hacer una instalación desde lens deberemos irnos al apartado de helm:



Aquí podremos buscar el chart que necesitemos, dado que este proyecto va enfocado a wordpress lo haremos con él, así que lo buscamos:

 
Una vez lo tengamos tendremos que hacer click en el y nos aparecerá esta nueva ventana donde deberemos dar click en install:



Se nos abre un editor donde poder modificar los valores por defecto, que versión queremos usar, en qué namespace queremos instalarlo y nombre que queremos poner:



Le damos click en install cuando hagamos todas las modificaciones que queramos y se nos instalará: 


En el apartado releases es donde encontramos que hemos instalado de helm con lens, como podemos apreciar tenemos el que acabamos de crear:




Wordpress
¿Qué es?
WordPress es un sistema de gestión de contenidos web (CMS o content management system), que en pocas palabras es un sistema para publicar contenido en la web de forma sencilla. Tan común es ya, que es el líder absoluto a nivel mundial para la creación de webs desde hace muchísimos años.
Es un software de código abierto (se puede tener acceso a todo el código) que además podemos tratar de mejorar dentro de su comunidad. Por lo tanto WordPress es gratuito y podemos descargarlo desde sus servidores https://wordpress.org/ para distintos fines.

Instalación de Wordpress con Helm
Primero nos crearemos un nuevo namespace donde instalarlo de la siguiente manera: 


Con estos dos pasos ya tenemos creado nuestro nuevo namespace donde ahora procederemos a instalar wordpress y demás herramientas necesarias.

Para hacer la instalación de wordpress, lo haremos con lens como hemos podido ver en instalación de chart, vamos a tener en cuenta cambiar algunos valores como son:
Namespace: proyectofinal
Namepod: wordpress-tf
WordpressUsername: admin
WordpressPassword: admin 

Una vez modifiquemos estos parámetros le daremos click en install y nos creará 2 pods, uno para wordpress y otro para mysql, a su vez tendremos un load balancer para acceder desde una ip pública que podremos ver en la pestaña services.


Por lo tanto si queremos acceder a administrar nuestro wordpress lo haremos con esa ip como podemos comprobar, más adelante añadiremos un dominio para que sea mucho más cómodo:

Configuración


Dominio para nuestra web
¿Qué es un dominio?
Un dominio web es el nombre único que recibe un sitio web en internet. Este nombre identifica a una página web concreta sin que puedan existir dos o más sitios web que compartan el mismo nombre de dominio.
Nominalia
Para comprar nuestro dominio haremos uso de nominalia, para ello nos iremos a su página web https://www.nominalia.com/ podemos hacer uso de cualquier otro proveedor que su funcionamiento será prácticamente idéntico.


Haremos todo el proceso de compra y una vez hecho todo esto nos saldrá en nuestro panel de control como podemos ver en la siguiente imagen:

Configuración Dominio y DNS
Para que todo funcione correctamente deberemos añadir varios parámetros, en primer lugar nos iremos al panel de control del dominio que hemos creado y daremos click en dominio y dns.


Una vez le hayamos dado click deberemos dar en gestionar DNS.

Donde nos saldrá una nueva ventana que sería la siguiente que estamos viendo, y aquí daremos en gestión avanzada:

Una vez estemos aquí deberemos añadir las siguientes líneas:

Añadir Dominio DigitalOcean
En el apartado de Networking en la web de digitalocean podremos encontrar los Domains como podemos ver en la siguiente captura, deberemos poner lo siguiente:

Una vez le damos a add domain nos saldrá esta nueva ventana donde deberemos añadir los siguientes, dado que tenemos un load balancer para nuestro wordpress apuntaremos a él como podemos ver:

Prueba de resolución
Una vez hecho todo esto deberemos esperar a que dicho dominio y configuración se propague entre todos los servidores DNS o por lo menos en algunos, esto lo podremos ver en la siguiente página web https://www.whatsmydns.net/ 

Una vez nuestro dominio esté propagado podremos entrar a nuestra página web con él como podemos comprobar en la siguiente imagen.


Conclusiones
Cuando comencé las prácticas todo esto era un mundo nuevo ya que es algo que no se toca en ningún módulo del grado superior, va todo más enfocado a tener una base sobre sistemas, redes, base de datos, seguridad porque en el momento de hacer una formación en la empresa si nos toca como en mi caso empezar una tecnología 100% desde 0 en vez de verlo todo negro porque no tienes ni idea de nada, verlo más bien gris dado que esa base con la que poder comprender conceptos, funcionamiento, porque detrás de todo hay lo mismo pero estructurado de manera distinta o usando un lenguaje, etc. Gracias a estos tres meses en la empresa he podido aprender mucho sobre estas tecnologías y gracias a ello ha sido posible llevar a cabo este proyecto tan gratificante para mi.

Agradecimientos
En primer lugar quiero dar las gracias a todos los profesores que nos han impartido las clases estos dos años sin olvidar aquellos que me  impartieron clases cuando realicé anteriormente el grado medio, gracias a ellos tengo esa base que me hace comprender y resolver muchos problemas que antes no era capaz.

En segundo lugar gracias a los compañeros de clase, ha sido un grupo bastante unido, ayudándonos todos entre todos y muy trabajadores.

En tercer lugar dar las gracias a toda mi familia y amigos que me han apoyado en todo momento a realizar estos estudios.

Por último y no menos importante dar gracias a la empresa que he realizado las prácticas Jaraxa,  por darme la oportunidad de aprender con ellos, me he sentido uno más para ellos y no me han dejado de la mano de dios. Dar gracias a Sergio (Devops de Jaraxa) que ha sido el que me ha ido guiando durante esos 3 meses en los cuales he aprendido mucho más de lo que esperaba aunque me queda un largo camino para llegar al nivel que está el.

