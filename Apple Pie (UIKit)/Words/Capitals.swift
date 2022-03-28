//
//  Capitals.swift
//  Apple Pie (UIKit)
//
//  Created by Fedor Boretskiy on 05.03.2022.
//

extension GuessingCollection {
    static let capitals = GuessingCollection(
        hintTypeDescription: "🏳️",
        list: [
//            WordToGuess(word: "Тирана", info: "Столица Албании", hint: "🇦🇱"),
//            WordToGuess(word: "Алжир", info: "Столица Алжира", hint: "🇩🇿"),
//            WordToGuess(word: "Андорра-ла-Велья", info: "Столица Андорры", hint: "🇦🇩"),
//            WordToGuess(word: "Луанда", info: "Столица Анголы", hint: "🇦🇴"),
//            WordToGuess(word: "Сент-Джонс", info: "Столица Антигуа и Барбуда", hint: "🇦🇬"),
//            WordToGuess(word: "Буэнос-Айрес", info: "Столица Аргентины", hint: "🇦🇷"),
//            WordToGuess(word: "Ереван", info: "Столица Армении", hint: "🇦🇲"),
//            WordToGuess(word: "Канберра", info: "Столица Австралии", hint: "🇦🇺"),
//            WordToGuess(word: "Вена", info: "Столица Австрии", hint: "🇦🇹"),
//            WordToGuess(word: "Баку", info: "Столица Азербайджана", hint: "🇦🇿"),
//            WordToGuess(word: "Нассау", info: "Столица Багамских Островов (полная официальная форма — Содружество Багамских Островов)", hint: "🇧🇸"),
//            WordToGuess(word: "Манама", info: "Столица Бахрейна", hint: "🇧🇭"),
//            WordToGuess(word: "Дакка", info: "Столица Бангладеша", hint: "🇧🇩"),
//            WordToGuess(word: "Бриджтаун", info: "Столица Барбадоса", hint: "🇧🇧"),
//            WordToGuess(word: "Минск", info: "Столица Белоруссии", hint: "🇧🇾"),
//            WordToGuess(word: "Брюссель", info: "Столица Бельгии", hint: "🇧🇪"),
//            WordToGuess(word: "Бельмопан", info: "Столица Белиза", hint: "🇧🇿"),
//            WordToGuess(word: "Порто-Ново", info: "Столица Бенина", hint: "🇧🇯"),
//            WordToGuess(word: "Тхимпху", info: "Столица Бутана", hint: "🇧🇹"),
//            WordToGuess(word: "Сукре", info: "Столица  Боливии", hint: "🇧🇴"),
//            WordToGuess(word: "Сараево", info: "Столица Боснии и Герцеговины", hint: "🇧🇦"),
//            WordToGuess(word: "Габороне", info: "Столица Ботсвана", hint: "🇧🇼"),
//            WordToGuess(word: "Бразилиа", info: "Столица Бразилии", hint: "🇧🇷"),
//            WordToGuess(word: "Бандар-Сери-Бегаван", info: "Столица Брунея", hint: "🇧🇳"),
//            WordToGuess(word: "София", info: "Столица Болгарии", hint: "🇧🇬"),
//            WordToGuess(word: "Уагадугу", info: "Столица Буркина-Фасо", hint: "🇧🇫"),
//            WordToGuess(word: "Гитега", info: "Столица Бурунди", hint: "🇧🇮"),
//            WordToGuess(word: "Пномпень", info: "Столица Камбоджи (ранее Кампучия)", hint: "🇰🇭"),
//            WordToGuess(word: "Яунде", info: "Столица Камеруна", hint: "🇨🇲"),
//            WordToGuess(word: "Оттава", info: "Столица Канады", hint: "🇨🇦"),
//            WordToGuess(word: "Прая", info: "Столица Кабо-Верде", hint: "🇨🇻"),
//            WordToGuess(word: "Банги", info: "Столица ЦАР (Центральноафриканская Республика, иногда просто Центральная Африка)", hint: "🇨🇫"),
//            WordToGuess(word: "Нджамена", info: "Столица Республики Чад", hint: "🇹🇩"),
//            WordToGuess(word: "Сантьяго", info: "Столица Чили", hint: "🇨🇱"),
//            WordToGuess(word: "Пекин", info: "Столица Китая", hint: "🇨🇳"),
//            WordToGuess(word: "Богота", info: "Столица Колумбии", hint: "🇨🇴"),
//            WordToGuess(word: "Морони", info: "Столица Комор (официальное название — Союз Коморских Островов", hint: "🇰🇲"),
//            WordToGuess(word: "Браззавиль", info: "Столица Республики Конго", hint: "🇨🇬"),
//            WordToGuess(word: "Киншаса", info: "Столица Демократической Республики Конго", hint: "🇨🇩"),
//            WordToGuess(word: "Сан-Хосе", info: "Столица Коста-Рики", hint: "🇨🇷"),
//            WordToGuess(word: "Ямусукро", info: "Столица Кот-д’Ивуара", hint: "🇨🇮"),
//            WordToGuess(word: "Загреб", info: "Столица Хорватии", hint: "🇭🇷"),
//            WordToGuess(word: "Гавана", info: "Столица Кубы", hint: "🇨🇺"),
//            WordToGuess(word: "Никосия", info: "Столица Кипра", hint: "🇨🇾"),
//            WordToGuess(word: "Прага", info: "Столица Чехии", hint: "🇨🇿"),
//            WordToGuess(word: "Копенгаген", info: "Столица Дании", hint: "🇩🇰"),
//            WordToGuess(word: "Джибути", info: "Столица Джибути", hint: "🇩🇯"),
//            WordToGuess(word: "Розо", info: "Столица Содружества Доминики", hint: "🇩🇲"),
//            WordToGuess(word: "Санто-Доминго", info: "Столица Доминиканской Республики", hint: "🇩🇴"),
//            WordToGuess(word: "Кито", info: "Столица Эквадора", hint: "🇪🇨"),
//            WordToGuess(word: "Каир", info: "Столица Египта", hint: "🇪🇬"),
//            WordToGuess(word: "Сан-Сальвадор", info: "Столица Сальвадора", hint: "🇸🇻"),
//            WordToGuess(word: "Малабо", info: "Столица Экваториальной Гвинеи", hint: "🇬🇶"),
//            WordToGuess(word: "Асмэра", info: "Столица Эритреи", hint: "🇪🇷"),
//            WordToGuess(word: "Таллин", info: "Столица Эстонии", hint: "🇪🇪"),
//            WordToGuess(word: "Мбабане", info: "Столица Королевства Эсватини (до 2018 – Королевство Свазиденд)", hint: "🇸🇿"),
//            WordToGuess(word: "Аддис-Абеба", info: "Столица Эфиопии", hint: "🇪🇹"),
//            WordToGuess(word: "Сува", info: "Столица Фиджи", hint: "🇫🇯"),
//            WordToGuess(word: "Хельсинки", info: "Столица Финляндии", hint: "🇫🇮"),
//            WordToGuess(word: "Париж", info: "Столица Франции", hint: "🇫🇷"),
//            WordToGuess(word: "Либревиль", info: "Столица Габона", hint: "🇬🇦"),
//            WordToGuess(word: "Банжул", info: "Столица Гамбии", hint: "🇬🇲"),
//            WordToGuess(word: "Тбилиси", info: "Столица Грузии", hint: "🇬🇪"),
//            WordToGuess(word: "Берлин", info: "Столица Германии", hint: "🇩🇪"),
//            WordToGuess(word: "Аккра", info: "Столица Ганы", hint: "🇬🇭"),
//            WordToGuess(word: "Афины", info: "Столица Греции", hint: "🇬🇷"),
//            WordToGuess(word: "Сент-Джорджес", info: "Столица Гренады", hint: "🇬🇩"),
//            WordToGuess(word: "Гватемала", info: "Столица Гватемалы", hint: "🇬🇹"),
//            WordToGuess(word: "Конакри", info: "Столица Гвинеи", hint: "🇬🇳"),
//            WordToGuess(word: "Бисау", info: "Столица Гвинеи-Бисау", hint: "🇬🇼"),
//            WordToGuess(word: "Джорджтаун", info: "Столица Гайаны", hint: "🇬🇾"),
//            WordToGuess(word: "Порт-о-Пренс", info: "Столица Гаити", hint: "🇭🇹"),
//            WordToGuess(word: "Тегусигальпа", info: "Столица Гондураса", hint: "🇭🇳"),
//            WordToGuess(word: "Будапешт", info: "Столица Венгрии", hint: "🇭🇺"),
//            WordToGuess(word: "Рейкьявик", info: "Столица Исландии", hint: "🇮🇸"),
//            WordToGuess(word: "Нью-Дели", info: "Столица Индии", hint: "🇮🇳"),
//            WordToGuess(word: "Джакарта", info: "Столица Индонезии", hint: "🇮🇩"),
//            WordToGuess(word: "Тегеран", info: "Столица Ирана", hint: "🇮🇷"),
//            WordToGuess(word: "Багдад", info: "Столица Ирака", hint: "🇮🇶"),
//            WordToGuess(word: "Дублин", info: "Столица Ирландии", hint: "🇮🇪"),
//            WordToGuess(word: "Иерусалим", info: "Столица Израиля", hint: "🇮🇱"),
//            WordToGuess(word: "Рим", info: "Столица Италии", hint: "🇮🇹"),
//            WordToGuess(word: "Кингстон", info: "Столица Ямайки", hint: "🇯🇲"),
//            WordToGuess(word: "Токио", info: "Столица Японии", hint: "🇯🇵"),
//            WordToGuess(word: "Амман", info: "Столица Иордании", hint: "🇯🇴"),
//            WordToGuess(word: "Нур-Султан", info: "Столица Казахстана", hint: "🇰🇿"),
//            WordToGuess(word: "Найроби", info: "Столица Кении", hint: "🇰🇪"),
//            WordToGuess(word: "Южная Тарава", info: "Столица Кирибати", hint: "🇰🇮"),
//            WordToGuess(word: "Приштина", info: "Столица Республики Косово", hint: "🇽🇰"),
//            WordToGuess(word: "Эль-Кувейт", info: "Столица Кувейта", hint: "🇰🇼"),
//            WordToGuess(word: "Бишкек", info: "Столица Киргизии", hint: "🇰🇬"),
//            WordToGuess(word: "Вьентьян", info: "Столица Лаоса", hint: "🇱🇦"),
//            WordToGuess(word: "Рига", info: "Столица Латвии", hint: "🇱🇻"),
//            WordToGuess(word: "Бейрут", info: "Столица Ливана", hint: "🇱🇧"),
//            WordToGuess(word: "Масеру", info: "Столица Лесото", hint: "🇱🇸"),
//            WordToGuess(word: "Монровия", info: "Столица Либерии", hint: "🇱🇷"),
//            WordToGuess(word: "Триполи", info: "Столица Ливии", hint: "🇱🇾"),
//            WordToGuess(word: "Вадуц", info: "Столица Лихтенштейна", hint: "🇱🇮"),
//            WordToGuess(word: "Вильнюс", info: "Столица Литвы", hint: "🇱🇹"),
//            WordToGuess(word: "Люксембург", info: "Столица Люксембурга", hint: "🇱🇺"),
//            WordToGuess(word: "Антананариву", info: "Столица Мадагаскара", hint: "🇲🇬"),
//            WordToGuess(word: "Лилонгве", info: "Столица Малави", hint: "🇲🇼"),
//            WordToGuess(word: "Куала-Лумпур", info: "Столица Малайзии", hint: "🇲🇾"),
//            WordToGuess(word: "Мале", info: "Столица Мальдив", hint: "🇲🇻"),
//            WordToGuess(word: "Бамако", info: "Столица Мали", hint: "🇲🇱"),
//            WordToGuess(word: "Валлетта", info: "Столица Мальта", hint: "🇲🇹"),
//            WordToGuess(word: "Маджуро", info: "Столица Маршалловых Островов", hint: "🇲🇭"),
//            WordToGuess(word: "Нуакшот", info: "Столица Мавритании", hint: "🇲🇷"),
//            WordToGuess(word: "Порт-Луи", info: "Столица Маврикия", hint: "🇲🇺"),
//            WordToGuess(word: "Мехико", info: "Столица Мексики", hint: "🇲🇽"),
//            WordToGuess(word: "Паликир", info: "Столица Микронезии", hint: "🇫🇲"),
//            WordToGuess(word: "Кишинёв", info: "Столица Молдавии", hint: "🇲🇩"),
//            WordToGuess(word: "Монако", info: "Столица Монако", hint: "🇲🇨"),
//            WordToGuess(word: "Улан-Батор", info: "Столица Монголии", hint: "🇲🇳"),
//            WordToGuess(word: "Подгорица", info: "Столица Черногории", hint: "🇲🇪"),
//            WordToGuess(word: "Рабат", info: "Столица Марокко", hint: "🇲🇦"),
//            WordToGuess(word: "Мапуту", info: "Столица Мозамбика", hint: "🇲🇿"),
//            WordToGuess(word: "Нейпьидо", info: "Столица Мьянмы", hint: "🇲🇲"),
//            WordToGuess(word: "Виндхук", info: "Столица  Намибии", hint: "🇳🇦"),
//            WordToGuess(word: "Катманду", info: "Столица Непала", hint: "🇳🇵"),
//            WordToGuess(word: "Амстердам", info: "Столица Нидерландов (неофициальное название Голландия)", hint: "🇳🇱"),
//            WordToGuess(word: "Веллингтон", info: "Столица Новой Зеландии", hint: "🇳🇿"),
//            WordToGuess(word: "Манагуа", info: "Столица Никарагуа", hint: "🇳🇮"),
//            WordToGuess(word: "Ниамей", info: "Столица Нигера", hint: "🇳🇪"),
//            WordToGuess(word: "Абуджа", info: "Столица Нигерии", hint: "🇳🇬"),
//            WordToGuess(word: "Пхеньян", info: "Столица КНДР (неофициальное название Северная Корея)", hint: "🇰🇵"),
//            WordToGuess(word: "Скопье", info: "Столица Северной Македонии", hint: "🇲🇰"),
//            WordToGuess(word: "Осло", info: "Столица Норвегии", hint: "🇳🇴"),
//            WordToGuess(word: "Маскат", info: "Столица Омана", hint: "🇴🇲"),
//            WordToGuess(word: "Исламабад", info: "Столица Пакистана", hint: "🇵🇰"),
//            WordToGuess(word: "Нгерулмуд", info: "Столица Палау", hint: "🇵🇼"),
//            WordToGuess(word: "Рамалла", info: "Столица Государства Палестина", hint: "🇵🇸"),
//            WordToGuess(word: "Панама", info: "Столица Панамы", hint: "🇵🇦"),
//            WordToGuess(word: "Порт-Морсби", info: "Столица Папуа — Новой Гвинеи", hint: "🇵🇬"),
//            WordToGuess(word: "Асунсьон", info: "Столица Парагвая", hint: "🇵🇾"),
//            WordToGuess(word: "Лима", info: "Столица Перу", hint: "🇵🇪"),
//            WordToGuess(word: "Манила", info: "Столица Филиппин", hint: "🇵🇭"),
//            WordToGuess(word: "Варшава", info: "Столица Польшы", hint: "🇵🇱"),
//            WordToGuess(word: "Лиссабон", info: "Столица Португалии", hint: "🇵🇹"),
//            WordToGuess(word: "Доха", info: "Столица Катара", hint: "🇶🇦"),
//            WordToGuess(word: "Бухарест", info: "Столица Румынии", hint: "🇷🇴"),
//            WordToGuess(word: "Москва", info: "Столица России", hint: "🇷🇺"),
//            WordToGuess(word: "Кигали", info: "Столица Руанды", hint: "🇷🇼"),
//            WordToGuess(word: "Апиа", info: "Столица Самоа", hint: "🇼🇸"),
//            WordToGuess(word: "Сан-Марино", info: "Столица Сан-Марино", hint: "🇸🇲"),
//            WordToGuess(word: "Сан-Томе", info: "Столица Сан-Томе и Принсипи", hint: "🇸🇹"),
//            WordToGuess(word: "Эр-Рияд", info: "Столица Саудовской Аравии", hint: "🇸🇦"),
//            WordToGuess(word: "Дакар", info: "Столица Сенегала", hint: "🇸🇳"),
//            WordToGuess(word: "Белград", info: "Столица Сербии", hint: "🇷🇸"),
//            WordToGuess(word: "Виктория", info: "Столица Сейшельских Островов", hint: "🇸🇨"),
//            WordToGuess(word: "Фритаун", info: "Столица Сьерра-Леоне", hint: "🇸🇱"),
//            WordToGuess(word: "Сингапур", info: "Столица Сингапура", hint: "🇸🇬"),
//            WordToGuess(word: "Братислава", info: "Столица Словакии", hint: "🇸🇰"),
//            WordToGuess(word: "Любляна", info: "Столица Словении", hint: "🇸🇮"),
//            WordToGuess(word: "Хониара", info: "Столица Соломоновых Островов", hint: "🇸🇧"),
//            WordToGuess(word: "Могадишо", info: "Столица Сомали", hint: "🇸🇴"),
//            WordToGuess(word: "Претория", info: "Столица ЮАР (Южно-Африканская Республика)", hint: "🇿🇦"),
//            WordToGuess(word: "Сеул", info: "Столица Республика Корея (неофициальное название Южная Корея)", hint: "🇰🇷"),
//            WordToGuess(word: "Джуба", info: "Столица Южного Судана", hint: "🇸🇸"),
//            WordToGuess(word: "Мадрид", info: "Столица Испания", hint: "🇪🇸"),
//            WordToGuess(word: "Шри-Джаяварденепура-Котте", info: "Столица Шри-Ланка", hint: "🇱🇰"),
//            WordToGuess(word: "Бастер", info: "Столица Сент-Китса и Невиса", hint: "🇰🇳"),
//            WordToGuess(word: "Кастри", info: "Столица Сент-Люсии", hint: "🇱🇨"),
//            WordToGuess(word: "Кингстаун", info: "Столица Сент-Винсента и Гренадин", hint: "🇻🇨"),
//            WordToGuess(word: "Хартум", info: "Столица Судана", hint: "🇸🇩"),
//            WordToGuess(word: "Парамарибо", info: "Столица Суринама", hint: "🇸🇷"),
//            WordToGuess(word: "Стокгольм", info: "Столица Швеции", hint: "🇸🇪"),
//            WordToGuess(word: "Берн", info: "Де-факто столица Швейцарии (де-юре в стране нет столицы)", hint: "🇨🇭"),
//            WordToGuess(word: "Дамаск", info: "Столица Сирии", hint: "🇸🇾"),
//            WordToGuess(word: "Тайбэй", info: "Столица Тайваня (официальное название Китайская Республика (Тайвань))", hint: "🇹🇼"),
            WordToGuess(word: "Душанбе", info: "Столица Таджикистана", hint: "🇹🇯"),
            WordToGuess(word: "Додома", info: "Столица Танзании", hint: "🇹🇿"),
            WordToGuess(word: "Бангкок", info: "Столица Таиланда", hint: "🇹🇭"),
            WordToGuess(word: "Дили", info: "Столица Восточного Тимора", hint: "🇹🇱"),
            WordToGuess(word: "Ломе", info: "Столица Того", hint: "🇹🇬"),
            WordToGuess(word: "Нукуалофа", info: "Столица Тонги", hint: "🇹🇴"),
            WordToGuess(word: "Порт-оф-Спейн", info: "Столица Тринидада и Тобаго", hint: "🇹🇹"),
            WordToGuess(word: "Тунис", info: "Столица Туниса", hint: "🇹🇳"),
            WordToGuess(word: "Анкара", info: "Столица Турции", hint: "🇹🇷"),
            WordToGuess(word: "Ашхабад", info: "Столица Туркмении", hint: "🇹🇲"),
            WordToGuess(word: "Фунафути", info: "Столица Тувалу", hint: "🇹🇻"),
            WordToGuess(word: "Кампала", info: "Столица Уганды", hint: "🇺🇬"),
            WordToGuess(word: "Киев", info: "Столица Украины", hint: "🇺🇦"),
            WordToGuess(word: "Абу-Даби", info: "Столица ОАЭ (Объединённые Арабские Эмираты)", hint: "🇦🇪"),
            WordToGuess(word: "Лондон", info: "Столица Великобритании", hint: "🇬🇧"),
            WordToGuess(word: "Вашингтон", info: "Столица США (Соединённые Штаты Америки)", hint: "🇺🇸"),
            WordToGuess(word: "Монтевидео", info: "Столица Уругвая", hint: "🇺🇾"),
            WordToGuess(word: "Ташкент", info: "Столица Узбекистана", hint: "🇺🇿"),
            WordToGuess(word: "Порт-Вила", info: "Столица Вануату", hint: "🇻🇺"),
            WordToGuess(word: "Ватикан", info: "Столица Ватикана", hint: "🇻🇦"),
            WordToGuess(word: "Каракас", info: "Столица Венесуэлы", hint: "🇻🇪"),
            WordToGuess(word: "Ханой", info: "Столица Вьетнама", hint: "🇻🇳"),
            WordToGuess(word: "Сана", info: "Столица Йемена", hint: "🇾🇪"),
            WordToGuess(word: "Лусака", info: "Столица Замбии", hint: "🇿🇲"),
            WordToGuess(word: "Хараре", info: "Столица Зимбабве", hint: "🇿🇼"),
        ]
        )
}
