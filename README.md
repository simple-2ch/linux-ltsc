# Linux LTSC

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Предисловие**

Если ты ещё не пользовался линуксами, тебе [сюда](https://linuxmint-installation-guide.readthedocs.io/ru/latest/) или [сюда](https://help.ubuntu.ru/wiki/установка_и_обновление_системы), но можешь попробовать накатить линух и по этому гайду.
Если ты хочешь превозмогать суровые челленджи от своей ОС и обоссывать всех в десктоп тредах, тебе [сюда](https://wiki.archlinux.org/title/installation_guide).
Если не устраивают готовые дистрибутивы и хочется чего-то минималистичного, но без последующего пердольства всю оставшуюся жизнь, добро пожаловать. Тут мы(?) пытаемся собрать альтернативу шиндоус лтсц. В основе Debian netinst, non-free драйвера, репозиторий testing, KDE Desktop, Firefox ESR. Остальное устанавливаешь сам, по своему усмотрению. Вопросы на распространённые ответы буду хранить [здесь](https://github.com/simple-2ch/linux-ltsc/blob/main/qq.md). При установке потребуется вайфай. Скрипт, чтобы законнектиться к проводному интернету через консоль, ещё не напердолили. Такие дела. 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Файлы для скачивания**

- Минимально возможный образ [Debian](https://www.debian.org/download.ru.html) (файл debian-XX.X.X-amd64-netinst.iso)
- Прога для записи образа на флешку [Rufus](https://github.com/pbatard/rufus/releases/latest) (файл rufus-X.XXp.exe)
- Чтобы избежать проблем с железом скачиваем [драйверы](https://cdimage.debian.org/cdimage/unofficial/non-free/firmware/testing/) (выбираешь самые свежие по дате, далее файл firmware.zip)
- Для однократного подключения к интернету из консоли, установки пакетов графического окружения и исправления некоторых багов загружаешь [скрипты](https://github.com/simple-2ch/linux-ltsc/raw/main/scripts/scripts.zip)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Готовим флешку**

Запускаешь Rufus. Настраиваешь следующим образом (метка тома 1, это важно):
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/rufus.jpg?raw=true)

Архив firmware.zip извлекаешь в папку firmware, а скрипты распаковываешь в корневой каталог на записанной флешке. Нагугли, что менять в твоём биосе, чтобы запустить загрузочную флешку. Если устанавливаешь рядом с шиндоус, то ещё узнай какую кнопку жать при старте пеки, для попадания в boot menu. В нём будешь выбирать ОС.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Установка системы**

Поихали! Пикча за пикчей, плюс некоторые пояснения, когда они будут необходимы. Логины пароли вводишь свои.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/1.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/2.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/3.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/4.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/5.jpg?raw=true)

Здесь тебе предложат подключиться к интернетам, но сейчас это не требуется.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/6.jpg?raw=true)

Оставляешь пустым.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/7.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/8.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/9.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/10.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/11.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/12.jpg?raw=true)

Размечать надо вручную.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/13.jpg?raw=true)

Далее два пути. Первый - удаляешь все разделы и прощаешься с шиндоус.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.00.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.01.jpg?raw=true)

В результате чистый хард.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.02.jpg?raw=true)

Второй путь - обрезаем раздел с шиндоус и ставим на освободившееся место линукс.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.11.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.12.jpg?raw=true)

Здесь ты указываешь, сколько места оставляешь винде.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.13.jpg?raw=true)

В результате имеем свободное место в конце диска. Где ты создаёшь...
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/14.14.jpg?raw=true)

Создаёшь раздел Ext4.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/15.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/16.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/17.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/18.jpg?raw=true)

Записываешь изменения на диск.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/19.jpg?raw=true)

Раздел подкачки не создаёшь. Для этого потом будет создан своп файл.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/20.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/21.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/22.jpg?raw=true)

Здесь жмёшь вернуться.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/23.jpg?raw=true)

Продолжаешь установку системы с минимальными возможностями.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/24.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/25.jpg?raw=true)

Стандартные утилиты не нужон. Потом сам накатишь, что действительно потребуется.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/26.jpg?raw=true)

This появится, если не было загрузчика шиндоус. Выбираешь хард, на который сейчас устанавливаешь систему.
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/27.jpg?raw=true)
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/28.jpg?raw=true)
Готово! Вытаскиваешь флешку, жмёшь продолжить, перезагружаешься. Если устанавливал начисто, увидишь Grub. Если дуалбут с виндой, заходишь в boot menu, выбираешь debian. Загрузится консоль.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**Установка графического окружения**

Вводишь в поле debian login: **`root`**
Печатаешь в поле Password пароль суперпользователя, который задавал при установке. Ввод пароля не отображается, это нормально. Просто введи и нажми Enter.
Вставляешь флешку и печатаешь:

**`mount /dev/disk/by-label/1 ~/`**

Далее вводишь:

**`ip a`**

Появится информация такого типа:
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/ip.jpg?raw=true)

Здесь важно название адаптера Wi-Fi, которое может отличаться. wlp2s0 в данном примере.
Печатаешь:

**`nano ~/w.sh`**

Откроется текстовый документ в котором надо исправить переменную INTERFACE, если название адаптера, которое ты узнал в предыдущем пункте, отличается. Навигация стрелками. В пунктах POINT и PASSWORD исправляешь название точки доступа и пароль, соответственно. Нажимаешь Ctrl+o и Enter для сохранения.
Вводишь:

**`sh ~/w.sh`**

Секунд через 30:

ping example.com`**

Должны пойти такие ответы:
![alt text](https://github.com/simple-2ch/linux-ltsc/blob/main/images/ping.jpg?raw=true)

Если их нет, то начинай донимать анонов в /gnulinux/ треде. Азаза. Если они есть, то нажимешь Ctrl+с и продолжаем.

Вводишь:

**`sh ~/s.sh`**

Отправляешься на кухню заварить чайку со вкусняхами. Процесс не быстрый. Как увидишь FINISHED вводишь reboot и после перезагрузки начинаешь работать в графическом окружении. The End.

Скрипты написаны с помощью анонов из /gnulinux/ тредов, за что им отдельное спасибо.
