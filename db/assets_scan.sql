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
  `name` varchar(128) DEFAULT NULL COMMENT '����',
  `core_ip` varchar(32) DEFAULT NULL COMMENT '����IP',
  `layers` int(11) DEFAULT '8' COMMENT 'ɨ��㼶',
  `snmp_timeout` int(11) DEFAULT '5' COMMENT 'SNMP��ʱʱ��(s)',
  `icmp_timeout` int(11) DEFAULT '5' COMMENT 'ICMP��ʱʱ��(s)',
  `filter_subnet` varchar(128) DEFAULT NULL COMMENT '��������',
  `snmp_retries` int(1) DEFAULT '1' COMMENT 'SNMP���Դ���',
  `max_thread` int(3) DEFAULT NULL COMMENT '����߳���',
  `start_time` int(11) DEFAULT NULL COMMENT '��ʼʱ��',
  `end_time` int(11) DEFAULT NULL COMMENT '����ʱ��',
  `timeout` int(11) DEFAULT NULL COMMENT 'ɨ�賬ʱʱ��(s)',
  `scan_result` int(11) DEFAULT NULL COMMENT 'ɨ����',
  `synchronize_asset` int(11) NOT NULL DEFAULT '1' COMMENT '�Ƿ�ͬ���ʲ�����',
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
  `snmp_port` int(11) DEFAULT '161' COMMENT 'SNMP�˿�',
  `snmp_version` int(11) DEFAULT '2' COMMENT 'SNMP�汾',
  --V1/2c������
  `read_key` varchar(128) DEFAULT 'public' COMMENT '���ؼ���',
  `write_key` varchar(128) DEFAULT 'private' COMMENT 'д�ؼ���',
  --V3������
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
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip��ַ',
  `layer` int(11) DEFAULT NULL COMMENT '���ֲ㼶',
  `parent_ip` varchar(32) DEFAULT NULL COMMENT '���ڵ�ip��ַ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topo_relation
-- ----------------------------