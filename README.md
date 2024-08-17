# Estructura de Carpetas - Flutter Clean Architecture

Este proyecto sigue los principios de Clean Architecture en Flutter, organizando el código en capas separadas para una mayor mantenibilidad y escalabilidad.

![clean_arch_diagram](https://miro.medium.com/v2/resize:fit:1400/format:webp/0*dX_zDXT7FiBemzFs.png)

## Estructura de Carpetas

```plaintext
lib/
├── config/
│   ├── helpers/
│   ├── router/
│   └── theme/
├── infrastructure/
│   ├── datasources/
│   ├── models/
│   └── repositories/
├── domain/
│   ├── entities/
│   ├── repositories/
│   └── usecases/
├── presentation/
│   ├── providers/
│   ├── pages/
│   └── widgets/
├── injection_container.dart
└── main.dart
```

## Descripción de las Capas y Componentes
* ### config/

Contiene configuraciones globales, helpers, temas y configuración de rutas esenciales para la aplicación.

* helpers/: Funciones o utilidades reutilizables a lo largo de la aplicación, como formateadores, validadores, o funciones auxiliares.
* router/: Configuración de las rutas de la aplicación, definiendo cómo se navega entre las páginas.
* theme/: Definición de los temas, estilos y configuraciones visuales globales, como colores y tipografías.

* ### infraestructura/
Contiene implementaciones técnicas concretas como modelos de datos, fuentes de datos externas, y repositorios que manejan la interacción con los datos. ya sean APIS o BD, es todo lo relacionados a datos consumibles desde mi app

* datasources/: Clases responsables de la obtención de datos desde fuentes externas como APIs o bases de datos locales.
* models/: Clases que representan los datos manejados en la infraestructura, usualmente mapeados de datos JSON o respuestas de APIs.
* repositories/: Implementaciones de los repositorios definidos en la capa de dominio, manejando la lógica de acceso a datos.

* ### domain/
Contiene las reglas de negocio, entidades principales, y las interfaces para los repositorios. Esta capa es independiente de cualquier implementación técnica.

* entities/: Clases que representan los objetos del dominio, conteniendo la lógica de negocio.
* repositories/: Interfaces que definen los contratos que las implementaciones de los repositorios deben seguir.
* usecases/: Clases que representan casos de uso o acciones que se pueden realizar en la aplicación, interactuando con los repositorios.

* ### presentation/
Contiene todo lo relacionado con la interfaz de usuario, como páginas, widgets y la lógica de presentación.

* providers/: Clases que manejan el estado y la lógica de negocio específica de la presentación.
* screens/: Pantallas o vistas de la aplicación que el usuario puede ver e interactuar.
* widgets/: Componentes reutilizables de la interfaz de usuario que pueden ser usados en varias páginas.

* ### Archivos Adicionales
* injection_container.dart: Archivo encargado de la configuración de la inyección de dependencias en la aplicación.
* main.dart: Punto de entrada de la aplicación, donde se inicializan los componentes principales y se configura la estructura básica de la app.

## Transicion entre capas
![clean_arch_flow](https://miro.medium.com/v2/resize:fit:1400/format:webp/0*dg1jimhK9ytRJnyM.png)

**NOTA**: en este caso usamos provider en lugar de BloC, la idea es que la logica de la presentacion igualmente sea manejada por los providers, adicional en la capa de Data(infraestructura) **Entity** seria **Model**, y en la capa de dominio **Model** y **Translator** lo podemos ver como nuesta **Entidad**
