FROM docker.io/postgres:16-alpine

ENV POSTGRES_USER=admin
ENV POSTGRES_DB=finantial-solution

EXPOSE 5432