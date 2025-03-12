# 🚀 Práctica: Consumo de APIs y Gestión de Datos en Flutter

Este proyecto ha sido desarrollado en Flutter y tiene como objetivo principal aprender a consumir APIs, gestionar datos dinámicos y mejorar la interacción con el usuario mediante la implementación de múltiples funcionalidades. A continuación, se detallan los ejercicios realizados.

---

## **Ejercicio 1: Configuración del Proyecto y Consumo de una API**

### **📌 Objetivo**
El objetivo principal de este ejercicio es configurar un proyecto en Flutter desde cero y establecer una conexión con una API externa para obtener y mostrar información de manera dinámica.

### **🔹 ¿Qué se ha hecho?**
- Se ha creado un proyecto en Flutter e inicializado la estructura del código.
- Se ha implementado una pantalla principal `CarsScreen`.
- Se ha desarrollado `car_http_service.dart`, un servicio HTTP encargado de realizar peticiones a la API de coches.
- Se ha definido un modelo de datos `car_model.dart` para estructurar la información obtenida de la API.
- Se ha utilizado `FutureBuilder` para manejar la carga de datos y mostrarlos en una lista interactiva.

### **📂 Archivos creados/modificados**
- `main.dart`
- `services/car_http_service.dart`
- `models/car_model.dart`

---

## **Ejercicio 2: Pantalla de Detalles de un Coche**

### **📌 Objetivo**
El objetivo de este ejercicio es mejorar la experiencia del usuario al permitirle obtener información más detallada sobre cada coche listado en la aplicación.

### **🔹 ¿Qué se ha hecho?**
- Se ha agregado la funcionalidad de navegación entre pantallas usando `Navigator.push`.
- Se ha creado `car_detail_screen.dart`, una nueva pantalla que muestra detalles adicionales de un coche seleccionado.
- Se ha actualizado `main.dart` para incluir la navegación al hacer clic en un coche de la lista.

### **📂 Archivos creados/modificados**
- `main.dart`
- `screens/car_detail_screen.dart`

---

## **Ejercicio 3: Implementación de un Buscador**

### **📌 Objetivo**
Permitir a los usuarios filtrar coches por marca dentro de la aplicación para facilitar la búsqueda de un vehículo específico.

### **🔹 ¿Qué se ha hecho?**
- Se ha añadido un `TextField` en el `AppBar` para que el usuario pueda escribir el nombre de la marca que desea buscar.
- Se ha implementado una función `filterCars()` que filtra los coches en tiempo real.
- Se ha actualizado la lista de coches dinámicamente a medida que el usuario escribe.

### **📂 Archivos creados/modificados**
- `main.dart`

---

## **Ejercicio 4: Sección de Chistes Dinámicos**

### **📌 Objetivo**
Añadir una nueva funcionalidad en la aplicación que muestre chistes dinámicos obtenidos desde una API externa y permita cambiar de chiste con un botón.

### **🔹 ¿Qué se ha hecho?**
- Se ha creado un nuevo apartado en la aplicación al que se accede mediante un botón en el `AppBar`.
- Se ha desarrollado `jokes_service.dart`, un servicio que obtiene chistes aleatorios desde `https://api.sampleapis.com/jokes/goodJokes`.
- Se ha creado `jokes_screen.dart`, una nueva pantalla que muestra un chiste y permite cambiarlo al presionar un botón.
- Se ha corregido el sistema de selección para que el chiste sea realmente aleatorio usando `shuffle()`.

### **📂 Archivos creados/modificados**
- `main.dart`
- `services/jokes_service.dart`
- `screens/jokes_screen.dart`

---

## **Conclusión**
Este proyecto ha permitido aplicar múltiples conceptos clave en el desarrollo de aplicaciones en Flutter, como:
- Consumo de APIs externas con `http`.
- Uso de `FutureBuilder` para manejar datos asíncronos.
- Implementación de navegación entre pantallas.
- Creación de listas dinámicas y filtrado en tiempo real.
- Manejo de datos dinámicos con llamadas a APIs externas.

Con estas bases, se pueden seguir añadiendo mejoras a la aplicación, como guardar coches favoritos o agregar más funcionalidades interactivas para el usuario. 🚀


