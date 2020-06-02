FROM clojure

WORKDIR /
COPY . .

ADD .env.example .env

RUN ls -la

RUN lein deps

EXPOSE 3000

CMD java -jar app/patients.jar