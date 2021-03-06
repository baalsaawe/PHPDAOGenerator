<?php
	require_once('sql/Connection.class.php');
	require_once('sql/ConnectionFactory.class.php');
	require_once('sql/ConnectionProperty.class.php');
	require_once('sql/QueryExecutor.class.php');
	require_once('sql/Transaction.class.php');
	require_once('sql/SqlQuery.class.php');
	require_once('core/ArrayList.class.php');

/**
 * Generated by DAOFactory - Codeigniter edition
 * @author: Alwyn Wymeersch
 * @date: ${date}
 */
class DAOFactory extends CI_Model{
    public function __construct(){
        $this->load->database();

    define('DB_HOST', $this->db->hostname);
    define('DB_NAME', $this->db->database);
    define('DB_USER', $this->db->username);
    define('DB_PASS', $this->db->password);
}
public function load($tablename){
    require_once('dao/'.$tablename.'DAO.class.php');
    require_once('dto/'.$tablename.'.class.php');
    require_once('mysql/'.$tablename.'MySqlDAO.class.php');
    require_once('mysql/ext/'.$tablename.'MySqlExtDAO.class.php');
}
public function loadAll($tablenames){
        foreach($tablenames as $key => $tablename){
            $this->load($tablename);
        }
}
${content}
}
?>