#Использовать gui

Перем Форма;

Процедура Инициализация()
	УправляемыйИнтерфейс = Новый УправляемыйИнтерфейс();
	Форма = УправляемыйИнтерфейс.СоздатьФорму();
КонецПроцедуры

Процедура ПоказатьФорму()
	Сообщить("Создали переменную форма");
	Форма.Показать();
КонецПроцедуры


Инициализация();
ПоказатьФорму();