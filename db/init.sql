CREATE DATABASE IF NOT EXISTS cloud_bookmark DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cloud_bookmark;

CREATE TABLE `bookmark` (
                            `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
                            `title` varchar(100) NOT NULL COMMENT '网站标题',
                            `url` varchar(255) NOT NULL COMMENT '网站链接',
                            `description` varchar(255) DEFAULT NULL COMMENT '网站描述',
                            `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
                            PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='书签表';

INSERT INTO `bookmark` (`title`, `url`, `description`)
VALUES ('Docker 官网', 'https://www.docker.com', '这是我在容器里初始化的数据');