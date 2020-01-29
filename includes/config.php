<?php

/**
 * Used to store website configuration information.
 *
 * @var string or null
 */
function config($key = '')
{
    $config = [
        'name' => 'xkdc comics',
        'XKCDURL' => 'http://xkcd.com/info.0.json',
        'pretty_uri' => false,
        'site_url' => 'http://assignment2-for-php.herokuapp.com/',
        'nav_menu' => [
            '' => 'Home',
            'randomImg' => 'A random comic',
            'aComic' => 'A Comic'
        ],
        'template_path' => 'template',
        'content_path' => 'content',
        'version' => 'v3.0',
    ];
    return isset($config[$key]) ? $config[$key] : null;
}
