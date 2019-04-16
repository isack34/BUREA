# BUREA
Ejercicio de preguntas word de burea

La aplicación esta realizada conforme el word test que me proporcionaron en donde al ajecutarla cada uno de los botones responde a una de las pregunts que se encuentran en el word.

El botón del ejercicio 1 realiza una busqueda en una lista donde se encuentren 3 objetos x,y,z "y" z sea mayor a 10.
En el botón del ejercicio 2 realiza una busqueda igual pero pensando de manera concurrente se introduce dentro de un método encolado donde unicamente regresa al hilo principal al terminar.
En los botones de los ejercicio 3 son unas alertas cada una con su respectiva pregunta y respuesta.

3.1 Una de las pantallas del app es un mapa geográfico de Google Earth en donde se enseñarán las diferentes tiendas / lugares que contengan el Producto con ID = `12345`. Utilizando SQL, ¿cómo sería un posible Query para obtener sólamente la data que se requiere en esta pantalla"
Respuesta:  "Select p.id, p.nombre, s.name, s.address, s.lat, s.lon FROM Product p JOIN Store s ON p.soldAt = s.id WHERE p.id = '12345';"

3.2 Durante picos de utilización, hemos notado que la pantalla de información del Producto, donde se enseñan todos los detalles del mismo incluyendo su nombre, descripción, tags y tiendas (con sus detalles) se tarda más de lo normal en cargar. Incluso, en muchas ocasiones la pantalla hace timeout. Asuma que la única razón para esta tardanza es la búsqueda y carga de esta data. Mencione 2 posibles soluciones a este problema"
Respuesta :  "1.- El ID del producto indexarlo y paginarlo 2.- Agregar índices a las columnas de la base, para así eliminar el TAF (table access full)"

3.3 Por consiguiente, se añaden nuevas propiedades a los productos regularmente. Asumiendo que usted sabe de dicha posibilidad previo a diseñar la arquitectura de la base de datos y seleccionar la tecnología que va a usar para ésta: Qué tecnología (tipo, marca, etc.) utilizaría para esta base de datos? Cómo estructuraría el esquema de la base de datos para que dichos cambios se puedan hacer fácilmente?", 
Respuesta  :   "Utilizaría una base de datos ORM como RealM Eso mappea columnas a la base y se hace desde el lenguaje de programación, no en la base y crear tablas generales y de ahí agregar tablas detalle",

El ejercicio 4 no se realizó ya que no tenia que ver con el perfil(Era web-backend)

