<?php

class PDO2 {

    // instance unique de la classe (singleton)
    private static $instance = null;
    // instance de la classe PDO
    private $PDOInstance = null;
    // Champs de connexion à la BDD
    private $user = 'root';
    private $pass = '';
    private $dbName = 'fynta';
    private $dbHost = 'localhost';

    /*
     * Méthode utile pour récupérer le singleton depuis le programme appelant
     */

    public static function getInstance() {
        // si l'instance n'a encore jamais été instanciée
        if (!self::$instance instanceof self) {
            self::$instance = new self;
        }
        // on retourne l'instance de la classe
        return self::$instance;
    }

    // The clone and wakeup methods prevents external instantiation of copies of the Singleton class,
    // thus eliminating the possibility of duplicate objects.
    public function __clone() {
        trigger_error('Clone is not allowed.', E_USER_ERROR);
    }

    public function __wakeup() {
        trigger_error('Deserializing is not allowed.', E_USER_ERROR);
    }

    /*
     * Constructeur de la classe qui initialise la connexion
     */

    private function __construct() {
        // on appelle le constructeur de la classe PDO
        $this->PDOInstance = new PDO("mysql:host=" . $this->dbHost . ";dbname=" . $this->dbName . ";charset=utf8", $this->user, $this->pass, array(
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    }

    /**
     * Exécute une requête SQL
     *
     * @param string $sql Requête SQL
     * @param array $params Paramètres de la requête
     * @return PDOStatement Résultats de la requête
     */
    public function query($sql, $params = null) {
        // si pas de paramètres
        if ($params == null) {
            // exécution directe
            $resultat = $this->PDOInstance->query($sql);
        } else {
            // requête préparée
            $resultat = $this->PDOInstance->prepare($sql);
            $resultat->execute($params);
        }
        return $resultat;
    }

}

