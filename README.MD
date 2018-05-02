## Месенджер в телеграм

параметры telegram_service_monitor

   Позиционный:
   
    -application, Имя отслеживаемой службы
    -token - токен бота
    -chat_id Идентификатор чата  

параметры telegram_notifer.ps1

    -token - токен бота
    -chat_id Идентификатор чата
    -text Текст сообщения

Параметры slack-notifer

    -URL - Сслыка API вида "https://hooks.slack.com/services/000000000/111111111/222222222222222222222222"
    -chat_id Идентификатор канала
    -text Текст сообщения 

Пример:

./slack_notifer.ps1 -URL "https://hooks.slack.com/services/000000000/111111111/222222222222222222222222" -Chat_id "#ci-bot" -Text "Hello world1"

параметры slack_service_monitor

   Позиционный:
   
    -URL - Сслыка API вида "https://hooks.slack.com/services/000000000/111111111/222222222222222222222222"
    -chat_id Идентификатор канала
    
    Пример:
    
    slack_service_monitor.cmd sqlAgent "https://hooks.slack.com/services/000000000/111111111/222222222222222222222222" "#ci-bot"