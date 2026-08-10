<div align="center">
  <h1>Cloud Bookmark API</h1>
  <p><strong>基于 Spring Boot 的云书签后端练习项目</strong></p>
  <p>REST API · MyBatis-Plus · MySQL · Docker Compose</p>
  <p>
    <img src="https://img.shields.io/badge/Java-17-ED8B00?style=flat-square&logo=openjdk&logoColor=white" alt="Java 17" />
    <img src="https://img.shields.io/badge/Spring%20Boot-3.5.11-6DB33F?style=flat-square&logo=springboot&logoColor=white" alt="Spring Boot" />
    <img src="https://img.shields.io/badge/MyBatis--Plus-3.5.9-2F80ED?style=flat-square" alt="MyBatis Plus" />
    <img src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat-square&logo=mysql&logoColor=white" alt="MySQL" />
  </p>
</div>

> 一个围绕云书签场景搭建的 Spring Boot API 工程，使用 MyBatis-Plus 访问 MySQL，并提供 Docker Compose 的本地启动路径。

## 项目结构

~~~text
.
├── db/
│   └── init.sql             # 数据库初始化脚本
├── src/                     # Spring Boot 应用代码
├── Dockerfile
├── docker-compose.yml       # MySQL + API
├── pom.xml
└── mvnw.cmd
~~~

## 技术栈

| 层次 | 技术 |
| --- | --- |
| Web | Spring Boot Web |
| 持久化 | MyBatis-Plus |
| 数据库 | MySQL 8 |
| 构建 | Maven Wrapper |
| 本地编排 | Docker Compose |

## 快速开始

### 使用 Docker Compose

~~~powershell
docker compose up -d --build
~~~

启动后：

- API 容器端口：8080
- MySQL 容器端口：3308
- 数据库名：cloud_bookmark
- 默认本地数据库账号：root / root

查看日志：

~~~powershell
docker compose logs -f bookmark-api
~~~

停止服务：

~~~powershell
docker compose down
~~~

### 使用 Maven Wrapper

如果已经准备好本地 MySQL，也可以直接启动 Spring Boot：

~~~powershell
.\mvnw.cmd spring-boot:run
~~~

数据库初始化脚本位于 [db/init.sql](./db/init.sql)，应用配置和接口实现位于 [src/](./src/)。

## 说明

这是一个持续演进中的练习项目。运行前请检查 docker-compose.yml 与应用配置中的数据库地址、账号和密码；不要把真实凭据提交到仓库。
