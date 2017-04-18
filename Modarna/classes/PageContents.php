<?php
    class PageContent{
        //method 
        public function get_header(){
            require_once 'includes/header.php';
        }
        public function get_slider(){
            include_once('includes/slider.php');
        }
        public function  get_service(){
        	include_once('includes/searvice.php');  
        }
        public function get_theme_part($theme_part){
            include_once ('includes/'.$theme_part.'.php');
        }
        public function get_footer(){
            include_once('includes/footer.php');
        }
    }

