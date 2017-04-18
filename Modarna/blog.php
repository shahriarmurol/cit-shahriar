<?php 
        require_once 'function/Manage.php';
        $objPageContents->get_header();
        $objPageContents->get_theme_part('blog-nav');
        $objPageContents->get_theme_part('blog-content');
        $objPageContents->get_theme_part('blog-aside');
	$objPageContents->get_footer();