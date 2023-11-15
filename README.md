# CHALLENGE WEB SERVICES AUTOMATION

En este proyecto se utiliza **KARATE FRAMEWORK**

Antes de ejecutar el proyecto, asegúrate de tener instalado lo siguiente:

## Herramientas necesarias:
- [IntelliJ IDEA Community Edition](https://www.jetbrains.com/idea/download/)
- [Java SE Development Kit 8](https://www.oracle.com/java/technologies/javase/javase-jdk8-downloads.html)
- [Apache Maven 3.9.2](https://maven.apache.org/download.cgi)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Plugins en el IDE:
- Cucumber for Java
- Gherkin
- Rainbow CSV (mejor visualización de archivos CSV)

## Configuración del Proyecto:

1. Teniendo el proyecto en nuestra máquina local, dirigirse al archivo **.feature** de cada método y validar datos de prueba:
````
Agregar.feature
Modificar.feature
Traer.feature
````

2. Dirigirse al archivo **Runner** de cada método y ejecutar la prueba:
````
AgregarMascotaRunner
ModificarMascotaRunner
TraerMascotaRunner
````

**Nota:** 
Para cada caso se valida: 
- Status Code esperado
- Schema del response

## Generar Reporte:

Finalizada la prueba, en el panel de resultados de ejecución **RUN** del IDE se muestra con título:
````
HTML report: (paste into browser to view) | Karate version: 1.0.0
````
Hacer clic en Link del reporte en HTML

## Datos de Contacto:

**Autor: Herbert Melendez Garcia**

**Linkedin:** www.linkedin.com/in/herb-me-ga