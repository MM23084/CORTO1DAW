FROM openjdk:17-jdk-slim AS build
WORKDIR /app

# Copiar el proyecto
COPY . .

# Dar permisos de ejecución al wrapper de Maven
RUN chmod +x ./mvnw

# Compilar el proyecto saltando las pruebas
RUN ./mvnw clean package -DskipTests

# Crear imagen final
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copiar el JAR compilado desde la etapa de build
COPY --from=build /app/target/*.jar app.jar

# Puerto de exposición
EXPOSE 9091

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]