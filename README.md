# 🏦 Financial Solution DB

Database service for the **Financial Solution** project, built with **PostgreSQL 16**.

---

## 🚀 Getting Started

### Prerequisites

- [Podman](https://podman.io/) or [Docker](https://www.docker.com/) installed on your machine.

### 🛠️ Build

To build the container image, run:

VERSION: example 1.0.0

```bash
podman build -t finantial-solution-db:{VERSION} .
```

### ▶️ Run

Start the database container with the following command:

PASSWORD: example 1234567

```bash
podman run -d --rm \
  --name finantial-db \{PASSWORD}' \
  -p 5432:5432 \
  -v ./data:/var/lib/postgresql/data:Z \
  finantial-solution-db:{VERSION}
```

> **Note**: The `-v ./data:/var/lib/postgresql/data:Z` flag ensures your data persists locally in the `./data` directory.

---

## ⚙️ Environment Variables

| Variable            | Default              | Description                     |
| ------------------- | -------------------- | ------------------------------- |
| `POSTGRES_USER`     | `admin`              | The superuser name.             |
| `POSTGRES_DB`       | `finantial-solution` | The default database name.      |
| `POSTGRES_PASSWORD` | _Required_           | The password for the superuser. |

---

## 📂 Project Structure

```text
.
├── Dockerfile          # Container definition
├── README.md           # Documentation
├── data/               # Persistent storage (ignored in git)
└── scripts/            # SQL initialization scripts
```
