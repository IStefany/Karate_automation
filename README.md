# **API Testing: Reqres API**

By Stefany Florez

# **Objetivo:** 

### Verificar las transacciones de la API de Reqres mediante pruebas de automatización con Karate.

# **Introducción**

### Mediante el las acciones propuestas en el curso de automatización de pruebas en BackEnd, se propician actividades de pruebas de API para el entendimiento del manejo de herramientas como Postman y el Framework de Karate como base de conocimiento para realizar dichas pruebas.
### Es así que en este repositorio podrán encontrar las colecciones empleadas en Postman para la API REST de Reqres y algunos ejemplos prácticos al interior del proyecto **"ReqRes API"** que es un proyecto desarrollado en lenguaje JAVA e implementando diferentes herramientas de testing automatizado como lo son Cucumber para las historias de usuario y Karate como Framework de pruebas.

### En las diferentes ramas del repositorio podrán encontrar diversos artefactos con distinto contenido relacionado a las prácticas desarrolladas

### A continuación encontraremos los diferentes escenarios planteados para esta práctica.  

## **Escenarios de prueba**:

###ReqresAPI-001: Verificar el funcionamiento del EndPoint de la API Reqres relacionado a la solicitud de información de los usuarios registrados
- Abrir Postman
- Generar una petición de tipo GET para listar todos los usuarios registrados en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción


##### Resultado esperado:
- Status Code: 200
- KeyWord: Ok
- Se deberá observar la lista de los usuarios registrados dentro de la API
- Uno de los usuarios de la Lista lleva por nombre “Michael”
 

##### Resultado Obtenido:
- Se obtuvo un status code “200” con la keyword “Ok”
- Se observa la lista de usuarios registrados en la API, y uno de ellos es “George”.


### ReqresAPI-002: Verificar el funcionamiento del EndPoint de la API Reqres relacionado a la solicitud de información de un Usuario en específico, este usuario deberá estar registrado en el BackEnd
- Abrir Postman
- Generar una petición de tipo GET para obtener la información de un usuario registrados en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción
 

##### Resultado esperado:
- KeyWord: Ok
- Se deberá observar la información del usuario registrado dentro de la API
- Validar que al menos uno de los datos obtenidos coincida con los del usuario requerido

  
##### Resultado Obtenido:
- Se obtuvo el status code “200” con la palabra Keyword “Ok”.
- Se observa la información del usuario registrado en la API.
- Se obtiene el usuario buscado “Michael”.


### ReqresAPI-003: Verificar el funcionamiento del EndPoint de la API Reqres relacionado a la creación de un Usuario exitosamente, este usuario deberá estar registrado en el BackEnd al final de la transacción
- Abrir Postman
- Generar una petición de tipo Post para la creación de un usuario en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción
 

##### Resultado esperado:
- Status Code: 201
- KeyWord: Created
- Se deberá observar la información del usuario registrado dentro de la API
- Validar que al menos uno de los datos de la respuesta coincida con los del usuario insertado


##### Resultado Obtenido:
- Se obtuvo un status code “201” con la keyword “Created”.
- Se observa la información del usuario creado.
- Se valida que el usuario insertado con nombre “Ivette” coincide con la respuesta.


### ReqresAPI-004: Verificar el funcionamiento del EndPoint de la API Reqres relacionado al Registro de un Usuario exitosamente, este usuario deberá quedar registrado en el BackEnd al final de la transacción
- Abrir Postman
 Generar una petición de tipo Post para Registrar un usuario en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción

##### Resultado esperado:
- Status Code: 200
- KeyWord: Ok
- Se deberá observar la información del usuario registrado dentro de la API
- Validar que en la respuesta se obtiene el id de registro

##### Resultado Obtenido:
- Cuando se ejecuta una petición del tipo POST se esperaría un Status Code 201 relacionado con una solicitud de creación del registro, sin embargo, estamos recibiendo un status code 200 que no corresponde a la creación sino mas bien a una modificación de un registro

##### Recomendación:
- Se recomienda al equipo de desarrollo poder revisar los flujos de los request de creación de nuevos registros en el BackEnd 

### ReqresAPI-005: Verificar el funcionamiento del EndPoint de la API Reqres relacionado la actualización de un Usuario exitosamente, este usuario deberá estar registrado en el BackEnd antes de realizar la transacción
- Abrir Postman
- Generar una petición de tipo PUT para Actualizar un usuario en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción


##### Resultado esperado:
- Status Code: 200
- KeyWord: Ok
- Se deberá observar la información del usuario registrado dentro de la API


##### Resultado Obtenido:
- Se obtuvo un Status Code “200” y la keyword “Ok”.
- Se observa la información del usuario.

### ReqresAPI-006: Verificar el funcionamiento del EndPoint de la API Reqres relacionado la actualización de un Recurso exitosamente, este usuario deberá estar registrado en el BackEnd antes de realizar la transacción
- Abrir Postman
- Generar una petición de tipo PUT para Actualizar un recurso en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción

##### Resultado esperado:
- Status Code: 200
- KeyWord: Ok
- Se deberá observar la actualización registrada dentro de la API


##### Resultado Obtenido:
- Se obtuvo el status code “200” y la keyword “Ok”.
- Se observa la actualización del recurso en la API.



### ReqresAPI-007: Verificar el funcionamiento del EndPoint de la API Reqres relacionado la eliminación de un usuario exitosamente, este usuario deberá estar registrado en el BackEnd antes de realizar la transacción
- Abrir Postman
- Generar una petición de tipo DELETE para Eliminar un usuario en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción

##### Resultado esperado:
- Status Code: 204
- KeyWord: Deleted

##### Resultado Obtenido:
- Se obtuvo el status code “204” y la keyword “Deleted”.

### ReqresAPI-008: Verificar el funcionamiento del EndPoint de la API Reqres relacionado la eliminación de un usuario de manera fallida, este usuario deberá estar registrado en el BackEnd antes de realizar la transacción
- Abrir Postman
- Generar una petición de tipo DELETE para Eliminar un usuario que no exista en el BackEnd, siguiendo la documentación del Swagger: https://reqres.in/api-docs/#/default/post_register 
- Comprobar la respuesta de la petición así como el código de estatus y el resultado de la transacción
- Generar el escenario de automatización de este caso de prueba, empleando el Framework diseñado en Intellij
- Validar la respuesta de la petición y comprobar que el resultado esperado (Swagger) es el mismo que el resultado obtenido de la transacción

##### Resultado esperado:
- Status Code: 400
- KeyWord: Not Found

##### Resultado Obtenido:
- El resultado obtenido es un Status Code 204, sin embargo, si el usuario no existe en la BBDD debería arrojar un error 400 “Not Found”

##### Recomendación:
-  Se recomienda revisar el flujo de borrado para que no obtengamos un falso positivo con usuarios que no existen en el BackEnd

# DashBoard Example:

![MyDashBoard](https://github.com/IStefany/Karate_automation/blob/master/Report.jpeg?raw=true)
