<?php
class Core{
    protected $contro_act ="pages";
    protected $metodo_act ="index";
    protected $parametros = []; 
    public function __construct()
    {
       // print_r($this->getUrl());
        $url = $this->getUrl();
        if(file_exists('../App/Controller'. ucwords($url[0]).'.php')){
            $this->contro_act = ucwords($url[0]);
            unset($url[0]);
        }
        require_once '../app/Controller/'.$this->contro_act.'.php';
        $this->contro_act = new $this->contro_act;
        if(isset($url[1])){
            if (method_exists($this->contro_act,$url[1])){
                $this->metodo_act= $url[1];
                unset($url[0]);
            }
            
        }
        echo $this->metodo_act;
    }
    public function getUrl(){
       // echo $_GET['url'];
        if(isset($_GET['url'])){
            $url = rtrim($_GET['url'], '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $url= explode('/', $url);
            return $url;
        }
    }
}

?>