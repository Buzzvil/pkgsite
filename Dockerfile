FROM golang:1.14

RUN mkdir -p /app
WORKDIR /app

COPY . .

RUN go mod download

RUN go install ./cmd/frontend
RUN go install ./cmd/prober
RUN go install ./cmd/worker