# cheapack
![GitHub](https://img.shields.io/github/license/nazarpunk/cheapack?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/nazarpunk/cheapack?style=flat-square)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/nazarpunk/cheapack?style=flat-square)

Собиратор карт для [Warcraft III](https://playwarcraft3.com/ru-ru/). Подробная инструкция находится [здесь](https://xgm.guru/p/wc3/cheapack). 

## Описание
Собирает код из указанных `.lua` файлов и запихивает его в `war3map.wct` для совместимости и обновляет его в `war3map.lua`. 

## Пример использования
```lua
local pack     = require 'cheapack'

pack.build(
		[[D:\Games\Warcraft III\x86_64]], -- путь к папке с игрой
        [[C:\Users\nazarpunk\IdeaProjects\Death-League]], -- путь к папке с проэктом
		'map.w3x', -- название карты
		{ -- путь к файлам для сборки
			'src\\lib', 
			'src\\global',
			'src\\ability',
			'src\\hero',
			'src\\init.lua'
		},
		'editor', -- открыть карту в редакторе 'editor' или в игре 'game'
        true -- карта для Reforged. По умолчанию false
)
```

### Примечания
- После первой сборке **обязательно** сохраните карту в редакторе, чтоб поместить код в `war3map.lua`.
- Устанавливайте файлам `.lua` режим переноса строки `CRLF`. 




