# BitrixAutoDeploy
Автодеплоер для битрикс проектов

## Установка
Либо клонируем репозиторий в **/local/tools** и переименовываем папку в auto_deploy

Либо устанавливаем через композер **vf92/auto_deploy**, добавив определения места установки через, в примере файл гита находится в папке local, устанавливать либо так, либо выносить за пределы проекта
```js
{
    "require": {
        "vf92/auto_deploy": "^1.1.1"
    },
    "extra": {
        "installer-paths": {
            "modules/{$name}/": ["type:bitrix-module"],
            "tools/{$name}/": ["type:wordpress-plugin"]
        }
    }
}
```
добавляем в .gitignore
```
/local/tools/auto_deploy
/local/tools/deploy_settings/base.ini
```

## Настройка
Инициализируем настройки скриптом **local/tools/auto_deploy/init_deploy**, либо сами создаем в папке **local/tools/deploy_settings** файлы по аналогии из пакета папки **local/rools/auto_deploy/settings**

## Использование
Вешаем на крон(желателньо не чаще чем раз в 5 минут) скрипт **local/tools/auto_deploy/deploy**, либо запускаем его вручную из консоли

## Что умеет
Умеет получать изменения из ветки, устанавливать пакеты из композер, накатывать миграции через модуль **sprint.migration**
