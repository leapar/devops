<?php
/**
 * file: config.ini.php
 *
 * 设置数据库连接参数
 * @author anyone
 * @copyright Copyright (C) 2009-2012 www.doitphp.com All rights reserved.
 * @version $Id: config.ini.php 1.0 2015-01-04 11:26:05Z anyone $
 * @package config
 * @since 1.0
 */

if (!defined('IN_DOIT')) {
	exit('403:Access Forbidden!');
}

return array (
  'master' =>
  array (
    'host' => 'localhost',
    'username' => 'clip',
    'password' => 'clip',
    'dbname' => 'clip',
    'port' => '3306',
  ),
  'slave' =>
  array (
    0 =>
    array (
      'host' => 'localhost',
      'username' => 'clip',
      'password' => 'clip',
      'dbname' => 'clip',
      'port' => '3306',
    ),
  ),
  'driver' => 'mysqli',
  'charset' => 'utf8',
  'prefix' => '',
);
