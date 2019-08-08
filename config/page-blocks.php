<?php

/*
|--------------------------------------------------------------------------
| Page Blocks
|--------------------------------------------------------------------------
|
| This configuration file is used to display page blocks and their content,
| where each key is a block and each property is specific to that block.
|
*/
$blocks = array();

// The 'global' fields we'll use on multiple blocks
$spacesField = [
    'field' => 'spaces',
    'display_name' => 'Add Vertical Space',
    'partial' => 'voyager::formfields.select_dropdown',
    'required' => 0,
    'options' => [
        'Bottom',
        'Top',
        'Top & Bottom',
        'None',
    ],
    'placeholder' => 0,
];

$animationsField = [
    'field' => 'animate',
    'display_name' => 'Animate this block (in)?',
    'partial' => 'voyager::formfields.checkbox',
    'placeholder' => 'on',
    'required' => 0,
];

$animation = [
    'field' => 'animation',
    'display_name' => 'Css анимация',
    'partial' => 'voyager::formfields.select_dropdown',
    'required' => 0,
    'default' => 'bounceInUp',
    'options' => [
        'none' => 'Нет',
        'bounceIn' => 'bounceIn',
        'bounceInDown' => 'bounceInDown',
        'bounceInLeft' => 'bounceInLeft',
        'bounceInRight' => 'bounceInRight',
        'bounceInUp' => 'bounceInUp',
        'fadeIn' => 'fadeIn',
        'fadeInDown' => 'fadeInDown',
        'fadeInDownBig' => 'fadeInDownBig',
        'fadeInLeft' => 'fadeInLeft',
        'fadeInRight' => 'fadeInRight',
        'fadeInRightBig' => 'fadeInRightBig',
        'fadeInUp' => 'fadeInUp',
        'fadeInUpBig' => 'fadeInUpBig',
        'flipInX' => 'flipInX',
        'flipInY' => 'flipInY',
        'lightSpeedIn' => 'lightSpeedIn',
        'rotateIn' => 'rotateIn',
        'rotateInDownLeft' => 'rotateInDownLeft',
        'rotateInDownRight' => 'rotateInDownRight',
        'rotateInUpLeft' => 'rotateInUpLeft',
        'rotateInUpRight' => 'rotateInUpRight',
        'zoomIn' => 'zoomIn',
        'zoomInDown' => 'zoomInDown',
        'zoomInLeft' => 'zoomInLeft',
        'zoomInRight' => 'zoomInRight',
        'zoomInUp' => 'zoomInUp',
        'slideInDown' => 'slideInDown',
        'slideInLeft' => 'slideInLeft',
        'slideInRight' => 'slideInRight',
        'slideInUp' => 'slideInUp',
        'top-to-bottom' => 'top-to-bottom',
        'bottom-to-top' => 'bottom-to-top',
        'left-to-right' => 'left-to-right',
        'right-to-left' => 'right-to-left',
        'appear' => 'appear',
    ],
];

$tag = [
    'field' => 'tag',
    'display_name' => 'Тег элемента',
    'partial' => 'voyager::formfields.select_dropdown',
    'required' => 0,
    'options' => [
        'h1' => 'h1',
        'h2' => 'h2',
        'h3' => 'h3',
        'h4' => 'h4',
        'h5' => 'h5',
        'h6' => 'h6',
        'p' => 'p',
        'div' => 'div',
    ],
];

$font = [
    'field' => 'font',
    'display_name' => 'Шрифт',
    'partial' => 'voyager::formfields.select_dropdown',
    'required' => 0,
    'default' => 'FuturaPTDemi',
    'options' => [
        'FuturaPTBold' => 'FuturaPTBold',
        'FuturaPTBoldOblique' => 'FuturaPTBoldOblique',
        'FuturaPTBook' => 'FuturaPTBook',
        'FuturaPTBookOblique' => 'FuturaPTBookOblique',
        'FuturaPTCondBold' => 'FuturaPTCondBold',
        'FuturaPTCondBoldOblique' => 'FuturaPTCondBoldOblique',
        'FuturaPTCondBook' => 'FuturaPTCondBook',
        'FuturaPTCondBookOblique' => 'FuturaPTCondBookOblique',
        'FuturaPTCondExtraBold' => 'FuturaPTCondExtraBold',
        'FuturaPTCondExtraBoldOblique' => 'FuturaPTCondExtraBoldOblique',
        'FuturaPTCondMedium' => 'FuturaPTCondMedium',
        'FuturaPTCondMediumOblique' => 'FuturaPTCondMediumOblique',
        'FuturaPTDemi' => 'FuturaPTDemi',
        'FuturaPTCondDemiOblique' => 'FuturaPTCondDemiOblique',
        'FuturaPTExtraBold' => 'FuturaPTExtraBold',
        'FuturaPTExtraBoldOblique' => 'FuturaPTExtraBoldOblique',
        'FuturaPTHeavy' => 'FuturaPTHeavy',
        'FuturaPTLight' => 'FuturaPTLight',
        'FuturaPTLightOblique' => 'FuturaPTLightOblique',
        'FuturaPTMedium' => 'FuturaPTMedium',
        'FuturaPTMediumOblique' => 'FuturaPTMediumOblique',
    ],
];

$id = [
    'field' => 'id',
    'display_name' => 'ID элемента',
    'partial' => 'voyager::formfields.text',
    'required' => 0,
    'placeholder' => '',
];

$class = [
    'field' => 'class',
    'display_name' => 'Дополнительный css класс',
    'partial' => 'voyager::formfields.text',
    'required' => 0,
];

$margin = [
    'field' => 'margin',
    'display_name' => 'Margin',
    'partial' => 'voyager::formfields.text',
    'required' => 0,
];

$padding = [
    'field' => 'padding',
    'display_name' => 'Padding',
    'partial' => 'voyager::formfields.text',
    'required' => 0,
];

/**
 * Callout Block
 * - Used for hero banners, CTA sections etc
 */
$blocks['callout'] = [
    'name' => 'Callout',
    'template' => 'voyager-page-blocks::blocks.callout',
    'fields' => [
        'size' => [
            'field' => 'size',
            'display_name' => 'Size (height) of section',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 1,
            'options' => [
                'Small',
                'Medium',
                'Large',
                'Extra Large',
            ],
            'placeholder' => 0,
        ],
        'fade_background' => [
            'field' => 'fade_background',
            'display_name' => 'Fade out background',
            'partial' => 'voyager::formfields.checkbox',
            'required' => 0,
        ],
        'br_1' => [
            'field' => 'br_1',
            'display_name' => 'Line Break',
            'partial' => 'break',
        ],
        'background_image' => [
            'field' => 'background_image',
            'display_name' => 'Background image',
            'partial' => 'voyager::formfields.image',
            'required' => 1,
        ],
        'br_2' => [
            'field' => 'br_2',
            'display_name' => 'Line Break',
            'partial' => 'break',
        ],
        'title' => [
            'field' => 'title',
            'display_name' => 'Title',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Changing the World!',
        ],
        'content' => [
            'field' => 'content',
            'display_name' => 'Content',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris.',
        ],
        'br_3' => [
            'field' => 'br_3',
            'display_name' => 'Line Break',
            'partial' => 'break',
        ],
        'button_text' => [
            'field' => 'button_text',
            'display_name' => 'Button Text',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'link' => [
            'field' => 'link',
            'display_name' => 'Link',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'br_4' => [
            'field' => 'br_4',
            'display_name' => 'Line Break',
            'partial' => 'break',
        ],
        'spaces' => $spacesField,
        'animate' => $animationsField,
    ],
];

/**
 * (Column'd) Content Block
 * - Can be used for standard WYSIWYG content
 */
$columns = array(
    'content_one_column',
    'content_two_columns',
    'content_three_columns',
    'content_four_columns',
);

foreach ($columns as $i => $block) {
    $numCols = $i + 1;

    $blocks[$block] = [
        'name' => "Текст - {$numCols} колонки",
        'template' => 'voyager-page-blocks::blocks.' . $block,
    ];
    for ($col = 1; $col <= $numCols; $col++) {
        $blocks[$block]['fields']["html_content_ru_{$col}"] = [
            'field' => "html_content_ru_{$col}",
            'display_name' => "Column {$col} content ru",
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
            'placeholder' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris.</p>',
        ];
        $blocks[$block]['fields']["html_content_ua_{$col}"] = [
            'field' => "html_content_ua_{$col}",
            'display_name' => "Column {$col} content ua",
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
            'placeholder' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris.</p>',
        ];
        $blocks[$block]['fields']["html_content_en_{$col}"] = [
            'field' => "html_content_en_{$col}",
            'display_name' => "Column {$col} content en",
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
            'placeholder' => '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris.</p>',
        ];
        $blocks[$block]['fields']["class_{$col}"] = [
            'field' => "class_{$col}",
            'display_name' => "Column {$col} Дополнительный css класс",
            'partial' => 'voyager::formfields.text',
            'required' => 0,
        ];
    }
    $blocks[$block]['fields']['margin'] = $margin;
    $blocks[$block]['fields']['padding'] = $padding;
    $blocks[$block]['fields']['animation'] = $animation;
    $blocks[$block]['fields']['id'] = $id;
    $blocks[$block]['fields']['class'] = $class;
    $blocks[$block]['fields']['spaces'] = $spacesField;
    $blocks[$block]['fields']['animate'] = $animationsField;
}

/**
 * (Column'd) Cards Block
 */
$columns = array(
    'cards_one_column',
    'cards_two_columns',
    'cards_three_columns',
);

foreach ($columns as $i => $block) {
    $numCols = $i + 1;

    $blocks[$block] = [
        'name' => "Cards - {$numCols} Column/s",
        'template' => 'voyager-page-blocks::blocks.' . $block,
    ];
    for ($col = 1; $col <= $numCols; $col++) {
        $blocks[$block]['fields']["image_{$col}"] = [
            'field' => "image_{$col}",
            'display_name' => "Column {$col}: Image",
            'partial' => 'voyager::formfields.image',
            'required' => 0,
        ];
        if ($numCols === 1) {
            $blocks[$block]['fields']["image_position_{$col}"] = [
                'field' => "image_position_{$col}",
                'display_name' => "Position of Column {$col}: Image",
                'partial' => 'voyager::formfields.select_dropdown',
                'required' => 0,
                'options' => [
                    'Left',
                    'Right',
                ],
                'placeholder' => 0,
            ];
        }
        $blocks[$block]['fields']["br_{$col}_1"] = [
            'field' => "br_{$col}_1",
            'display_name' => "Line break",
            'partial' => 'break',
        ];
        $blocks[$block]['fields']["title_{$col}"] = [
            'field' => "title_{$col}",
            'display_name' => "Column {$col}: Title",
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Changing the World!',
        ];
        $blocks[$block]['fields']["content_{$col}"] = [
            'field' => "content_{$col}",
            'display_name' => "Column {$col}: Content",
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam in dui mauris.',
        ];
        $blocks[$block]['fields']["br_{$col}_2"] = [
            'field' => "br_{$col}_2",
            'display_name' => "Line break",
            'partial' => 'break',
        ];
        $blocks[$block]['fields']["button_text_{$col}"] = [
            'field' => "button_text_{$col}",
            'display_name' => "Button Column {$col}: Text",
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ];
        $blocks[$block]['fields']["link_{$col}"] = [
            'field' => "link_{$col}",
            'display_name' => "Column {$col}: Link",
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ];
        $blocks[$block]['fields']["br_{$col}_3"] = [
            'field' => "br_{$col}_3",
            'display_name' => "Line break",
            'partial' => 'break',
        ];
    }
    $blocks[$block]['fields']['spaces'] = $spacesField;
    $blocks[$block]['fields']['animate'] = $animationsField;
}

/**
 * Row of Images Block
 */
$blocks['image_row'] = [
    'name' => 'Row of Images',
    'template' => 'voyager-page-blocks::blocks.image_row',
];
$blocks['image_row']['fields']['title'] = [
    'field' => 'title',
    'display_name' => 'Person',
    'partial' => 'voyager::formfields.text',
    'required' => 0,
    'placeholder' => 'Our Partners',
];
$blocks['image_row']['fields']['sub_title'] = [
    'field' => 'sub_title',
    'display_name' => 'Sub Text',
    'partial' => 'voyager::formfields.text',
    'required' => 0,
    'placeholder' => 'The glue that keeps our company thriving.',
];
for ($col = 1; $col <= 10; $col++) {
    $blocks['image_row']['fields']["image_{$col}"] = [
        'field' => "image_{$col}",
        'display_name' => "Image {$col}",
        'partial' => 'voyager::formfields.image',
        'required' => 0,
    ];
    $blocks['image_row']['fields']["link_{$col}"] = [
        'field' => "link_{$col}",
        'display_name' => "Link for Image {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
        'placeholder' => '',
    ];
    $blocks['image_row']['fields']["br_{$col}"] = [
        'field' => "br_{$col}",
        'display_name' => 'Line Break',
        'partial' => 'break',
    ];
}
$blocks['image_row']['fields']['spaces'] = $spacesField;
$blocks['image_row']['fields']['animate'] = $animationsField;

/**
 * Testimonial Block
 */
$blocks['testimonial'] = [
    'name' => 'Testimonial',
    'template' => 'voyager-page-blocks::blocks.testimonial',
    'fields' => [
        'content' => [
            'field' => 'content',
            'display_name' => 'Testimonial Content',
            'partial' => 'voyager::formfields.text_area',
            'required' => 1,
            'placeholder' => 'Company X is both attractive and highly adaptable. Company X has really helped our business thrive - I can\'t wait to see what comes next for us.',
        ],
        'title' => [
            'field' => 'title',
            'display_name' => 'Person',
            'partial' => 'voyager::formfields.text',
            'required' => 1,
            'placeholder' => 'John Smith',
        ],
        'sub_title' => [
            'field' => 'sub_title',
            'display_name' => 'Sub Text',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Founder &amp; CEO',
        ],
        'br_1' => [
            'field' => 'br_1',
            'display_name' => 'Line Break',
            'partial' => 'break',
        ],
        'image' => [
            'field' => 'image',
            'display_name' => 'Image',
            'partial' => 'voyager::formfields.image',
            'required' => 0,
        ],
        'br_2' => [
            'field' => 'br_2',
            'display_name' => 'Line Break',
            'partial' => 'break',
        ],
        'spaces' => $spacesField,
        'animate' => $animationsField,
    ],
];

/**
 * HTML Block
 */
$blocks['html'] = [
    'name' => 'Raw Html',
    'template' => 'voyager-page-blocks::blocks.html',
    'fields' => [
        'html' => [
            'field' => 'html',
            'display_name' => 'Raw HTML',
            'partial' => 'voyager::formfields.code_editor',
            'required' => 1,
        ]
    ],
];

/**
 * JS Block
 */
$blocks['js'] = [
    'name' => 'Raw JS',
    'template' => 'voyager-page-blocks::blocks.js',
    'fields' => [
        'js' => [
            'field' => 'js',
            'display_name' => 'Raw JS',
            'partial' => 'voyager::formfields.code_editor',
            'required' => 1,
        ]
    ],
];

/**
 * Text Block
 */
$blocks['text'] = [
    'name' => 'Текстовый блок',
    'template' => 'voyager-page-blocks::blocks.text',
    'fields' => [
        'text_ru' => [
            'field' => 'text_ru',
            'display_name' => 'Текст ru',
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 1,
        ],
         'text_ua' => [
            'field' => 'text_ua',
            'display_name' => 'Текст ua',
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
        ],
         'text_en' => [
            'field' => 'text_en',
            'display_name' => 'Текст en',
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
        ],
        'margin' => $margin,
        'padding' => $padding,
        'animation' => $animation,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Text + Image Block
 */
$blocks['image_text'] = [
    'name' => 'Текст + картинка',
    'template' => 'voyager-page-blocks::blocks.text_image',
    'fields' => [
        'image_text_ru' => [
            'field' => 'image_text_ru',
            'display_name' => 'Текст ru',
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 1,
        ],
        'image_text_ua' => [
            'field' => 'image_text_ua',
            'display_name' => 'Текст ua',
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
        ],
        'image_text_en' => [
            'field' => 'image_text_en',
            'display_name' => 'Текст en',
            'partial' => 'voyager::formfields.rich_text_box',
            'required' => 0,
        ],
        'image' => [
            'field' => 'image',
            'display_name' => 'Изображение',
            'partial' => 'voyager::formfields.image',
            'required' => 0,
        ],
        'image_align' => [
            'field' => 'image_align',
            'display_name' => 'Позиция картинки',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 0,
            'placeholder' => '',
            'options' => [
                'left' => 'По левому краю',
                'right' => 'По правому краю',
            ],
        ],
        'width' => [
            'field' => 'width',
            'display_name' => 'Ширина изображения',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 1,
            'options' => [
                '100' => '100%',
                '90' => '90%',
                '80' => '80%',
                '70' => '70%',
                '60' => '60%',
                '50' => '50%',
                '40' => '40%',
                '30' => '30%',
                '20' => '20%',
                '10' => '10%',
            ],
        ],
        'margin' => $margin,
        'padding' => $padding,
        'animation' => $animation,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Video Block
 */
$blocks['video'] = [
    'name' => 'Video Player',
    'template' => 'voyager-page-blocks::blocks.video',
    'fields' => [
        'title_ru' => [
            'field' => 'title_ru',
            'display_name' => 'Заголовок ru',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_ua' => [
            'field' => 'title_ua',
            'display_name' => 'Заголовок ua',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_en' => [
            'field' => 'title_en',
            'display_name' => 'Заголовок en',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'link' => [
            'field' => 'link',
            'display_name' => 'Видео ссылка',
            'partial' => 'voyager::formfields.text',
            'required' => 1,
            'placeholder' => '',
        ],
        'width' => [
            'field' => 'width',
            'display_name' => 'Ширина видео',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 1,
            'options' => [
                '100' => '100%',
                '90' => '90%',
                '80' => '80%',
                '70' => '70%',
                '60' => '60%',
                '50' => '50%',
                '40' => '40%',
                '30' => '30%',
                '20' => '20%',
                '10' => '10%',
            ],
        ],
        'aspect' => [
            'field' => 'aspect',
            'display_name' => 'Соотношение сторон',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 0,
            'placeholder' => '',
            'options' => [
                '16:9',
                '4:3',
                '2.35:1',
            ],
        ],
        'align' => [
            'field' => 'align',
            'display_name' => 'Выравнивание',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 0,
            'placeholder' => '',
            'options' => [
                'left' => 'По левому краю',
                'right' => 'Выровнять по правому краю',
                'center' => 'Выровнять по центру',
            ],
        ],
        'animation' => $animation,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Image Block
 */
$blocks['image'] = [
    'name' => 'Изображение',
    'template' => 'voyager-page-blocks::blocks.image',
    'fields' => [
        'title_ru' => [
            'field' => 'title_ru',
            'display_name' => 'Заголовок ru',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_ua' => [
            'field' => 'title_ua',
            'display_name' => 'Заголовок ua',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_en' => [
            'field' => 'title_en',
            'display_name' => 'Заголовок en',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'image' => [
            'field' => 'image',
            'display_name' => 'Изображение',
            'partial' => 'voyager::formfields.image',
            'required' => 0,
            'placeholder' => '',
        ],
        'link' => [
            'field' => 'link',
            'display_name' => 'Ссылка',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'width' => [
            'field' => 'width',
            'display_name' => 'Ширина',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 1,
            'options' => [
                '100' => '100%',
                '90' => '90%',
                '80' => '80%',
                '70' => '70%',
                '60' => '60%',
                '50' => '50%',
                '40' => '40%',
                '30' => '30%',
                '20' => '20%',
                '10' => '10%',
            ],
        ],
        'align' => [
            'field' => 'align',
            'display_name' => 'Выравнивание',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 0,
            'placeholder' => '',
            'options' => [
                'left' => 'По левому краю',
                'right' => 'Выровнять по правому краю',
                'center' => 'Выровнять по центру',
            ],
        ],
        'animation' => $animation,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Heading Block
 */
$blocks['heading'] = [
    'name' => 'Произвольный заголовок',
    'template' => 'voyager-page-blocks::blocks.heading',
    'fields' => [
        'text_ru' => [
            'field' => 'text_ru',
            'display_name' => 'Текст ru',
            'partial' => 'voyager::formfields.text',
            'required' => 1,
            'placeholder' => 'Это произвольный заголовок',
        ],
        'text_ua' => [
            'field' => 'text_ua',
            'display_name' => 'Текст ua',
            'partial' => 'voyager::formfields.text',
            'required' => 1,
            'placeholder' => 'Это произвольный заголовок',
        ],
        'text_en' => [
            'field' => 'text_en',
            'display_name' => 'Текст en',
            'partial' => 'voyager::formfields.text',
            'required' => 1,
            'placeholder' => 'Это произвольный заголовок',
        ],
        'link' => [
            'field' => 'link',
            'display_name' => 'URL (Ссылка)',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'tag' => $tag,
        'align' => [
            'field' => 'align',
            'display_name' => 'Выравнивание текста',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 0,
            'placeholder' => '',
            'options' => [
                'left' => 'По левому краю',
                'right' => 'Выровнять по правому краю',
                'center' => 'Выровнять по центру',
            ],
        ],
        'background' => [
            'field' => 'background',
            'display_name' => 'Фон текста',
            'partial' => 'voyager::formfields.image',
            'required' => 0,
            'placeholder' => '',
        ],
        'font_size' => [
            'field' => 'font_size',
            'display_name' => 'Размер шрифта',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'line_height' => [
            'field' => 'line_height',
            'display_name' => 'Интерлиньяж',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'font' => $font,
        'animation' => $animation,
        'margin' => $margin,
        'padding' => $padding,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Counter Block
 */
$blocks['counter'] = [
    'name' => 'Счетчик',
    'template' => 'voyager-page-blocks::blocks.counter',
];
for ($col = 1; $col <= 6; $col++) {
    $blocks['counter']['fields']["number_{$col}"] = [
        'field' => "number_{$col}",
        'display_name' => "Число {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["text_after_ru_{$col}"] = [
        'field' => "text_after_ru_{$col}",
        'display_name' => "Текст после числа ru {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["text_after_ua_{$col}"] = [
        'field' => "text_after_ua_{$col}",
        'display_name' => "Текст после числа ua {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["text_after_en_{$col}"] = [
        'field' => "text_after_en_{$col}",
        'display_name' => "Текст после числа en {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["text_below_ru_{$col}"] = [
        'field' => "text_below_ru_{$col}",
        'display_name' => "Текст под числом ru {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["text_below_ua_{$col}"] = [
        'field' => "text_below_ua_{$col}",
        'display_name' => "Текст под числом ua {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["text_below_en_{$col}"] = [
        'field' => "text_below_en_{$col}",
        'display_name' => "Текст под числом en {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['counter']['fields']["br_{$col}"] = [
        'field' => "br_{$col}",
        'display_name' => 'Line Break',
        'partial' => 'break',
    ];
}
$blocks['counter']['fields']['animation'] = $animation;
$blocks['counter']['fields']['id'] = $id;
$blocks['counter']['fields']['class'] = $class;



$blocks['banners_masonry'] = [
    'name' => 'Баннеры (Masonry)',
    'template' => 'voyager-page-blocks::blocks.banners_masonry',
    'fields' => [
        'banner_1' => [
            'field' => 'banner_1',
            'display_name' => 'Баннер 1',
            'partial' => 'voyager::formfields.image',
            'required' => 1,
        ],
        'banner_2' => [
            'field' => 'banner_2',
            'display_name' => 'Баннер 2',
            'partial' => 'voyager::formfields.image',
            'required' => 1,
        ],
        'banner_3' => [
            'field' => 'banner_3',
            'display_name' => 'Баннер 3',
            'partial' => 'voyager::formfields.image',
            'required' => 1,
        ],
        'title_ru' => [
            'field' => 'title_ru',
            'display_name' => 'Заголовок ru',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_ua' => [
            'field' => 'title_ua',
            'display_name' => 'Заголовок ua',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_en' => [
            'field' => 'title_en',
            'display_name' => 'Заголовок en',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'animation' => $animation,
        'margin' => $margin,
        'padding' => $padding,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Media Grid Block
 */
$blocks['media_grid'] = [
    'name' => 'Media Grid',
    'template' => 'voyager-page-blocks::blocks.media_grid',
];
$blocks['media_grid']['fields']["heading_ru"] = [
    'field' => "heading_ru",
    'display_name' => "Заголовок ru",
    'partial' => 'voyager::formfields.text',
    'required' => 0,
];
$blocks['media_grid']['fields']["heading_ua"] = [
    'field' => "heading_ua",
    'display_name' => "Заголовок ua",
    'partial' => 'voyager::formfields.text',
    'required' => 0,
];
$blocks['media_grid']['fields']["heading_en"] = [
    'field' => "heading_en",
    'display_name' => "Заголовок en",
    'partial' => 'voyager::formfields.text',
    'required' => 0,
];
for ($col = 1; $col <= 8; $col++) {
    $blocks['media_grid']['fields']["url_{$col}"] = [
        'field' => "url_{$col}",
        'display_name' => "URL {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["image_{$col}"] = [
        'field' => "image_{$col}",
        'display_name' => "Изображение {$col}",
        'partial' => 'voyager::formfields.image',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["title_ru_{$col}"] = [
        'field' => "title_ru_{$col}",
        'display_name' => "Заголовок ru {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["title_ua_{$col}"] = [
        'field' => "title_ua_{$col}",
        'display_name' => "Заголовок ua {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["title_en_{$col}"] = [
        'field' => "title_en_{$col}",
        'display_name' => "Заголовок en {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["text_ru_{$col}"] = [
        'field' => "text_ru_{$col}",
        'display_name' => "Текст ru {$col}",
        'partial' => 'voyager::formfields.text_area',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["text_ua_{$col}"] = [
        'field' => "text_ua_{$col}",
        'display_name' => "Текст ua {$col}",
        'partial' => 'voyager::formfields.text_area',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["text_en_{$col}"] = [
        'field' => "text_en_{$col}",
        'display_name' => "Текст en {$col}",
        'partial' => 'voyager::formfields.text_area',
        'required' => 0,
    ];
    $blocks['media_grid']['fields']["br_{$col}"] = [
        'field' => "br_{$col}",
        'display_name' => 'Line Break',
        'partial' => 'break',
    ];
}
$blocks['media_grid']['fields']['animation'] = $animation;
$blocks['media_grid']['fields']['id'] = $id;
$blocks['media_grid']['fields']['class'] = $class;

/**
 * News Grid
 */
$blocks['news_grid'] = [
    'name' => 'News Grid',
    'template' => 'voyager-page-blocks::blocks.news_grid',
    'fields' => [
        'title_ru' => [
            'field' => 'title_ru',
            'display_name' => 'Заголовок ru',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_ua' => [
            'field' => 'title_ua',
            'display_name' => 'Заголовок ua',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'title_en' => [
            'field' => 'title_en',
            'display_name' => 'Заголовок en',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'total' => [
            'field' => 'total',
            'display_name' => 'Total items',
            'partial' => 'voyager::formfields.text',
            'required' => 1,
            'placeholder' => 8,
        ],
        'animation' => $animation,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Image Block
 */
$blocks['button'] = [
    'name' => 'Кнопка',
    'template' => 'voyager-page-blocks::blocks.button',
    'fields' => [
        'text_ru' => [
            'field' => 'text_ru',
            'display_name' => 'Текст ru',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Текст на кнопке ru',
        ],
        'text_ua' => [
            'field' => 'text_ua',
            'display_name' => 'Текст ua',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Текст на кнопке ua',
        ],
        'text_en' => [
            'field' => 'text_en',
            'display_name' => 'Текст en',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => 'Текст на кнопке en',
        ],
        'link' => [
            'field' => 'link',
            'display_name' => 'URL (Ссылка)',
            'partial' => 'voyager::formfields.text',
            'required' => 0,
            'placeholder' => '',
        ],
        'align' => [
            'field' => 'align',
            'display_name' => 'Выравнивание',
            'partial' => 'voyager::formfields.select_dropdown',
            'required' => 0,
            'placeholder' => '',
            'options' => [
                'left' => 'По левому краю',
                'right' => 'Выровнять по правому краю',
                'center' => 'Выровнять по центру',
            ],
        ],
        'animation' => $animation,
        'id' => $id,
        'class' => $class,
    ],
];

/**
 * Carousel Block
 */
$blocks['carousel'] = [
    'name' => 'Carousel',
    'template' => 'voyager-page-blocks::blocks.carousel',
];
for ($col = 1; $col <= 5; $col++) {
    $blocks['carousel']['fields']["image_{$col}"] = [
        'field' => "image_{$col}",
        'display_name' => "Фоновое Изображение текста {$col}",
        'partial' => 'voyager::formfields.image',
        'required' => 0,
    ];
    $blocks['carousel']['fields']["title_ru_{$col}"] = [
        'field' => "title_ru_{$col}",
        'display_name' => "Заголовок ru {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['carousel']['fields']["title_ua_{$col}"] = [
        'field' => "title_ua_{$col}",
        'display_name' => "Заголовок ua {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['carousel']['fields']["title_en_{$col}"] = [
        'field' => "title_en_{$col}",
        'display_name' => "Заголовок en {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['carousel']['fields']["br_{$col}"] = [
        'field' => "br_{$col}",
        'display_name' => 'Line Break',
        'partial' => 'break',
    ];
}
$blocks['carousel']['fields']['animation'] = $animation;
$blocks['carousel']['fields']['id'] = $id;
$blocks['carousel']['fields']['class'] = $class;

/**
 * Media Grid Block
 */
$blocks['masonry'] = [
    'name' => 'Masonry',
    'template' => 'voyager-page-blocks::blocks.masonry',
];
for ($col = 1; $col <= 10; $col++) {
    $blocks['masonry']['fields']["image_{$col}"] = [
        'field' => "image_{$col}",
        'display_name' => "Изображение {$col}",
        'partial' => 'voyager::formfields.image',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["title_ru_{$col}"] = [
        'field' => "title_ru_{$col}",
        'display_name' => "Заголовок ru {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["title_ua_{$col}"] = [
        'field' => "title_ua_{$col}",
        'display_name' => "Заголовок ua {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["title_en_{$col}"] = [
        'field' => "title_en_{$col}",
        'display_name' => "Заголовок en {$col}",
        'partial' => 'voyager::formfields.text',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["text_ru_{$col}"] = [
        'field' => "text_ru_{$col}",
        'display_name' => "Текст ru {$col}",
        'partial' => 'voyager::formfields.text_area',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["text_ua_{$col}"] = [
        'field' => "text_ua_{$col}",
        'display_name' => "Текст ua {$col}",
        'partial' => 'voyager::formfields.text_area',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["text_en_{$col}"] = [
        'field' => "text_en_{$col}",
        'display_name' => "Текст en {$col}",
        'partial' => 'voyager::formfields.text_area',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["element_width_{$col}"] = [
        'field' => "element_width_{$col}",
        'display_name' => "Grid elements per row {$col}",
        'partial' => 'voyager::formfields.select_dropdown',
        'required' => 0,
        'options' => [
            '1' => 1,
            '2' => 2,
        ],
    ];
    $blocks['masonry']['fields']["featured_{$col}"] = [
        'field' => "featured_{$col}",
        'display_name' => 'Подсветить блок синим цветом',
        'partial' => 'voyager::formfields.checkbox',
        'placeholder' => 'on',
        'required' => 0,
    ];
    $blocks['masonry']['fields']["br_{$col}"] = [
        'field' => "br_{$col}",
        'display_name' => 'Line Break',
        'partial' => 'break',
    ];
}
$blocks['masonry']['fields']['animation'] = $animation;
$blocks['masonry']['fields']['id'] = $id;
$blocks['masonry']['fields']['class'] = $class;

return $blocks;
