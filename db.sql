/*
SQLyog - Free MySQL GUI v5.19
Host - 5.5.29 : Database - image_vc_rsa
*********************************************************************
Server version : 5.5.29
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `image_vc_rsa`;

USE `image_vc_rsa`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `adminid` varchar(20) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`adminid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`id`,`name`,`password`,`adminid`,`address`,`phone`,`email`) values (1,'Admin123','admin','admin','Bangalore','7788987788','admin@gmail.com');

/*Table structure for table `m_key` */

DROP TABLE IF EXISTS `m_key`;

CREATE TABLE `m_key` (
  `key_id` varchar(100) NOT NULL,
  `public_key` blob NOT NULL,
  `master_s_key` blob NOT NULL,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_key` */

insert into `m_key` (`key_id`,`public_key`,`master_s_key`) values ('kanaga','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0�I��M-���F��9�-93�������U�:�%^��������z ���o�+�~�.�IB|�r�s-$�&N�`���?���0Et=�[ �����l�1�	&�R����Y3B��`�-#� ~�A\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0z0�v\00\r	*�H��\r\0�`0�\\\0��\0�I��M-���F��9�-93�������U�:�%^��������z ���o�+�~�.�IB|�r�s-$�&N�`���?���0Et=�[ �����l�1�	&�R����Y3B��`�-#� ~�A\0��gU̇�r��i����?Z�)�Y�r���n�^Qj�U�.��|�s܍&����2Y�(R(����l�_�>���e|�L�Z���`?��O��hTu����\n;�6�/�\0���?t�\0� 8��p�,�A\0��\'覥U��1,��҅>_��{ @���� o�|�7 ��o�\'	��o�������~��\'\'9�A\0��v�ZX��%T]).32��P��|E����϶{ͳ�W>�*�\"��K\\;�l2m����²�~V�ɜ�@2��W��O��^����M�\'���d�\Z�Ǵ�0|V3]����}��3�K�hT]�X�]t�g|��A@d�e��y�Ez��ie��%��>��LO=q�������{�g1�����L���6�>uD~�A\0���ά��*�Ж�E��e�����J�/D΃w+��$��79tC!�f\'��z�����I[�F�1�t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE'),('mani','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0�s+���0�$����|\n���Gq���c�,�L�-��R��6��4�)F�U� �K�����l�r�{|<�O��xnL����/�@�����5�U,:�E����}�`OkKs5g�.�6��K�-���\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0y0�u\00\r	*�H��\r\0�_0�[\0��\0�s+���0�$����|\n���Gq���c�,�L�-��R��6��4�)F�U� �K�����l�r�{|<�O��xnL����/�@�����5�U,:�E����}�`OkKs5g�.�6��K�-���\0����P�5)���)GJ���x������~&��!��2�c��b���Gm�܂#��{b�ɳ�hW���[��-�Cz���\r�L����]��4����:B�ho���e�1���$+��UP&���w�IA\0��Ί�\r��Kg��0��8o,+����﹩�Nۊ@Sߝ�U��&�S�I��\\�9n��qO#A\0����o\rm��g~��t�h\n���2~���i�0�3�އ�\'���c\n�p:7�C�ϯ�����U@?���7z �i�\rLT�m5�$>�\\�*�g\n4~�����3\'q��?������V�b=si�\Z�@+r��q:6VA�x\r~�D��쯊8>�;GW4�t�\rj�1���Ŏ@2F�ݥPbIk>�r��/*1Gi@m��S_��J���L�={�YW�>$o��=MVU�����ڈ	{���ӟP��ߚɸ�^�?����t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE'),('santhosh','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0���=���U���D��`�6�i23��F�s{���G[��e��{,s6v�W��U\\����8O�LB�P�\rAt�N���^bp1EUH���;R��=��\' wu>�h�T �4��cKk�v���5D$�\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0z0�v\00\r	*�H��\r\0�`0�\\\0��\0���=���U���D��`�6�i23��F�s{���G[��e��{,s6v�W��U\\����8O�LB�P�\rAt�N���^bp1EUH���;R��=��\' wu>�h�T �4��cKk�v���5D$�\0��Oh��`2u��\0b��%�\n]ndϡr���|��3!9�Q�E@�hH�15�ԸC���u�9��q���߻]�t�\n�b�[���5����JJ%;�;���!R��TQ3�r\rx]g���N�ȋ|��y��A\0�$�~�@A�4G>;�ɪ���k��Ĝ�w���m���%a�mS��/In�i/�S����/cQ�A\0�ޠ$�;�_V;�r�������h�~�I4�u�e�}�ռ}�+Aq��c�)��P��C��r�KA\0�z�_Y�K�/h����	��I�P`�\"����� �m�����ebS���XR�v)�3��-���CU@@��ӏ���)�\"�M�t�ي��`��N����RyK+\0��Ϗ5��p^;\\S�g�<]���Y�-@f�4rz9\'�N[�h� P�9�	6�eԜ���&�)�t,`Z.��h3�0��>#�Du��P�žJ2�0t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE'),('user','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0\0�0��0\r	*�H��\r\0��\00����\0����6��	3�,фt�g��X9\ntJ��hݘKH�;,C\"�i��Wb=��>����j���{�W�����P��~�xy0�/N�?��u�72���Y�\0�Ut�����z�_�֨|*����4i�O�#\0t\0X.509~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PUBLIC','��\0sr\0java.security.KeyRep��O����C\0L\0	algorithmt\0Ljava/lang/String;[\0encodedt\0[BL\0formatq\0~\0L\0typet\0Ljava/security/KeyRep$Type;xpt\0RSAur\0[B���T�\0\0xp\0\0y0�u\00\r	*�H��\r\0�_0�[\0��\0����6��	3�,фt�g��X9\ntJ��hݘKH�;,C\"�i��Wb=��>����j���{�W�����P��~�xy0�/N�?��u�72���Y�\0�Ut�����z�_�֨|*����4i�O�#\0����\0\"17a�A���$7f��>$�)�U`A�yTŎ/�� �v���l��TSOK�G���\\ky�R�gX�ɡ��ꨠ-@õ	~��7�A	q �ӣr�W%E]�x�Y����T3x� N;e\0��8��A\0�V�زkO[�Ш��CD��G��x�I�㰰�	��3T����U���=`����yeZ�4v�-A\0�y�X3�pU�e�r����?[��;eE�2�v���z�SO��gbr�rP��U���Y)��7�\'g��@6�Y�����ۮ��b��l*�\Z�睌ɂg��!�CO��Ư���M8@ϷA�o�&h����9�r�-@tKF���!��en����BN�o��/��2\0�\r������uk\0v���t�\Z�y���%QQ�f�*�@��o�\nh;\\���\n��\r���*o�*���@�r>���$��L ��\'���ψcj��~v~t\0PKCS#8~r\0java.security.KeyRep$Type\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0PRIVATE');

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`id`,`userid`,`password`,`username`,`gender`,`address`,`city`,`email`,`phone`) values (1,'user','user1','Manivannan','Male','JNagar','Bangalore','mani@gmail.com','9988776655');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
