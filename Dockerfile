FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
COPY --from=buildstage /app/target/*.jar app.jar
EXPOSE 3306
ENTRYPOINT ["java","-jar","/app/bget.jar"]