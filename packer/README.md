1. Для создания образа
Запускаем packer с указанием файла с переменными
packer build -var-file=variables.json ./immutable.json
a. запускает скрипт install_ruby.sh
b. запускает скрипт install_mongodb.sh
c. запускает скрипт install_app.sh
d. копирует файл init(reddit.service) в tmp
f. выполняет скрипты

2. Для создания ВМ
запускаем скрипт
./create_reddit_vm.sh
