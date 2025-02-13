<?php

/**
 * Used to store website configuration information.
 *
 * @var string or null
 */
function config($key = '')
{
    $config = [
        'name' => 'Team Alpaca!',
        /*'XKCDURL' => 'http://xkcd.com/info.0.json',
        'pretty_uri' => false,*/
        'site_url' => 'https://team-alpaca.herokuapp.com',
        'nav_menu' => [
            '' => 'home',
            'AboutUs' => 'AboutUs'
            /*'randomImg' => 'A random comic',
            'aComic' => 'A Comic'*/
        ],
        'template_path' => 'template',
        'Content_path' => 'Content',
        'version' => 'v3.0',
    ];
    return isset($config[$key]) ? $config[$key] : null;
}
