This document provides a guide on how to deploy **Kafka** in various deployment environment such as DEV, STG, and PRD. However, It does not delve into the related technology in detail. For instance, It explains how to deploy **Kafka** in Docker container without providing further information on Docker.

The intended audience for this document includes:
- software engineers
- program managers

Let's take a brief look at these learning materials.

```
├── LICENSE
├── README.md
├── docker
│ ├── compose.yml
│ ├── dockerfile.base.dev
│ └── dockerfile.kafka.3.6.1
├── source
│ ├── conf
│ │ ├── broker1.properties
│ │ ├── broker2.properties
│ │ └── controller.properties
│ └── script
│     ├── start.sh
│     └── stop.sh
├── supervisor
│ ├── broker.ini
│ ├── controller.ini
│ └── supervisord.conf
└── wiki
    ├── dev-environment.md
    └── index.md
```
- **source:** It includes everything needed for **Kafka**, like certificates, configurations, scripts, and more.
- **supervisor:** It includes configuration file for `supervisord` and **Kafka** programs.
- **docker:** It includes all the Docker-related materials like Dockerfile, Compose, and the Context directory.
- **wiki:** It includes user guides for utilizing these materials.

Let's download our repository.

**Step 1:** Create a directory to manage open-source software (OSS).

```bash
sudo mkdir /opt/oss
sudo chown -R $USER /opt/oss
```

**Step 2:** Clone our `kafka-cluster` repository.

```bash
git clone https://github.com/sathiyaraj-sridhar/kafka-cluster.git /opt/oss/kafka-cluster
```

## Guides

**Development environment (DEV):**
1. [Running three-node Kafka cluster in a Docker Container](wiki/dev-environment.md)
