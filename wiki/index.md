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

## Roadmaps

**Development environment (DEV):**
- [-] [Deploying three-node Kafka cluster in a Docker Container](dev-environment.md)
- [ ] Testing Ansible playbooks in a Docker container.
- [ ] Testing Chef cookbooks in a Docker container.

**Staging and QA environment (STG & QA):**
- [ ] Provisioning infrastructure for a Kubernetes setup using Terraform.
- [ ] Deploying a three-node Kafka cluster in Kubernetes.
- [ ] Let's understand how to scale Kafka cluster in Kubernetes.
- [ ] Let's understand how to backup Kafka cluster data in Kubernetes.

**Production environment (PRD):**
- [ ] Provisioning infrastructure on the AWS cloud using Terraform.
- [ ] Deploying a three-node Kafka cluster in the AWS cloud using Ansible.
- [ ] Deploying a three-node Kafka cluster in the AWS cloud using Chef.
- [ ] Let's understand how to scale Kafka cluster in the AWS cloud.
- [ ] Let's understand how to backup Kafka cluster data in the AWS cloud.
