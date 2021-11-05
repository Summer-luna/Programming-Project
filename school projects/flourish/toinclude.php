<?php
function __autoload($class_name)
{
    $flourish_root = $_SERVER['DOCUMENT_ROOT'] . '/flourish/';
    
    $file = $flourish_root . $class_name . '.php';
 
    if (file_exists($file)) {
        include $file;
        return ;
    }
    
    throw new Exception('The class ' . $class_name . ' could not be loaded');
}

__autoload("fActiveRecord");
__autoload("fRecordSet");
__autoload("fORMDatabase");?>