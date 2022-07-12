Установка терраформа
Настройка провайдера
Создание подсети
# https://cloud.yandex.ru/docs/vpc/operations/subnet-create
# yc vpc subnet create --name test-subnet-1   --description "My test subnet"   --folder-id b1gmcu0esncmdden02bk   --network-id enp003abes895vg9hue6   --zone ru-central1-a   --range 192.168.0.0/24
Добавление ресурс для создания инстанса
Добавление SSH Ключа
Добавление Provisoners
Создание outpusts.tf
Опредениние переменных (terraform.tfvars , variables.tf)
Создание бансировщика (lb.tf)
Добавление 2го инстанса (count)
Выполнение проверки доступности приложения
terraform destroy
