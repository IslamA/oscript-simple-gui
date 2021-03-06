Перем Форма;

Процедура Инициализация()

    //# Загружаем внешнюю компоненту
    ПодключитьВнешнююКомпоненту(ОбъединитьПути(КаталогПрограммы(), "oscript-simple-gui.dll"));

    УправляемыйИнтерфейс = Новый УправляемыйИнтерфейс();
    Форма = УправляемыйИнтерфейс.СоздатьФорму();

    //# Устанавливаем обработку события ПриОткрытии
    Форма.УстановитьДействие(ЭтотОбъект, "ПриОткрытии", "ПриОткрытииФормы");
    Форма.Показать();

КонецПроцедуры

//# Обработка события первого открытия формы
Процедура ПриОткрытииФормы() Экспорт
    
    Данные = Новый Соответствие;
    Данные.Вставить("Один", "1");
    Данные.Вставить("Два", "2");
    Данные.Вставить("Три", "3");

    ПолеСоСписком1 = Форма.Элементы.Добавить("ПолеСоСписком1", "ПолеФормы", Неопределено);
    ПолеСоСписком1.Заголовок = "Поле со списком";
    ПолеСоСписком1.Вид = Форма.ВидПоляФормы.ПолеСоСписком;
    ПолеСоСписком1.СписокВыбора = Данные;
    ПолеСоСписком1.Значение = "3";
    ПолеСоСписком1.УстановитьДействие(ЭтотОбъект, "ПриИзменении", "ПриИзменииЗначения");

    Форма.Высота = 80;

КонецПроцедуры

Процедура ПриИзменииЗначения() Экспорт
    Сообщить("Новое значение: " +  Форма.Элементы.Найти("ПолеСоСписком1").Значение);
КонецПроцедуры

Инициализация();