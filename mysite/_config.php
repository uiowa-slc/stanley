<?php

use SilverStripe\Security\PasswordValidator;
use SilverStripe\Security\Member;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;
use SilverStripe\Control\Director;
use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;
// remove PasswordValidator for SilverStripe 5.0
$validator = new PasswordValidator();

$validator->minLength(8);
$validator->checkHistoricalPasswords(6);
Member::set_password_validator($validator);
SilverStripe\ORM\Search\FulltextSearchable::enable();

TinyMCEConfig::get('cms')
    ->addButtonsToLine(1, 'styleselect')
    ->setOption('importcss_append', true);

TinyMCEConfig::get('cms')->setOption(
    'extended_valid_elements',
    'div[style|data-configid|height|width]'.
    'img[class|src|alt|title|hspace|vspace|width|height|align|onmouseover|onmouseout|name|usemap],' .
    'iframe[src|style|name|width|height|title|align|allowfullscreen|frameborder|marginwidth|marginheight|scrolling],' .
    'object[classid|codebase|width|height|data|type],' .
    'embed[src|type|pluginspage|width|height|autoplay],' .
    'param[name|value],' .
    'map[class|name|id],' .
    'area[shape|coords|href|target|alt],' .
    'ol[start|type]'
);