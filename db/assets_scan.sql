/*
Navicat MySQL Data Transfer
Source Server         : topo
Source Server Version : 50544
Source Host           : 10.65.60.11:3306
Source Database       : assets_scan
Target Server Type    : MYSQL
Target Server Version : 50544
File Encoding         : 65001
Date: 2016-09-06 11:16:13
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `topo_config`
-- ----------------------------
DROP TABLE IF EXISTS `topo_config`;
CREATE TABLE `topo_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(128) DEFAULT NULL COMMENT '名称',
  `core_ip` varchar(32) DEFAULT NULL COMMENT '核心IP',
  `layers` int(11) DEFAULT '8' COMMENT '扫描层级',
  `snmp_timeout` int(11) DEFAULT '5' COMMENT 'SNMP超时时间(s)',
  `icmp_timeout` int(11) DEFAULT '5' COMMENT 'ICMP超时时间(s)',
  `filter_subnet` varchar(128) DEFAULT NULL COMMENT '过滤子网',
  `snmp_retries` int(1) DEFAULT '1' COMMENT 'SNMP重试次数',
  `max_thread` int(3) DEFAULT NULL COMMENT '最大线程数',
  `start_time` int(11) DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间',
  `timeout` int(11) DEFAULT NULL COMMENT '扫描超时时间(s)',
  `scan_result` int(11) DEFAULT NULL COMMENT '扫描结果',
  `synchronize_asset` int(11) NOT NULL DEFAULT '1' COMMENT '是否同步资产数据',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topo_config
-- ----------------------------

-- ----------------------------
-- Table structure for `topo_config_snmp`
-- ----------------------------
DROP TABLE IF EXISTS `topo_config_snmp`;
CREATE TABLE `nm_monitor_argument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(64) DEFAULT NULL,
  `snmp_port` int(11) DEFAULT '161' COMMENT 'SNMP端口',
  `snmp_version` int(11) DEFAULT '2' COMMENT 'SNMP版本',
  --V1/2c参数：
  `read_key` varchar(128) DEFAULT 'public' COMMENT '读关键字',
  `write_key` varchar(128) DEFAULT 'private' COMMENT '写关键字',
  --V3参数：
  `security_level` int(11) DEFAULT NULL COMMENT 'security level (noAuthNoPriv|authNoPriv|authPriv)',
  `auth_protocol` varchar(32) DEFAULT NULL COMMENT 'authentication protocol (MD5|SHA)',
  `auth_pass` varchar(32) DEFAULT NULL COMMENT 'authentication protocol pass phrase',
  `user_name` varchar(32) DEFAULT NULL COMMENT 'security name (e.g. bert)',
  `privacy_protocol` varchar(32) DEFAULT NULL COMMENT 'privacy protocol (DES|AES)',
  `privacy_pass` varchar(32) DEFAULT NULL COMMENT 'privacy protocol pass phrase',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topo_config_snmp
-- ----------------------------

-- ----------------------------
-- Table structure for `topo_relation`
-- ----------------------------
DROP TABLE IF EXISTS `topo_relation`;
CREATE TABLE `topo_relation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip地址',
  `layer` int(11) DEFAULT NULL COMMENT '发现层级',
  `parent_ip` varchar(32) DEFAULT NULL COMMENT '父节点ip地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topo_relation
-- ----------------------------