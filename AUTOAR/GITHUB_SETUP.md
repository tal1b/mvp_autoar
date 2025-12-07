# Инструкция по загрузке проекта на GitHub

## Быстрый способ (с использованием скрипта)

1. **Создайте Personal Access Token:**
   - Перейдите: https://github.com/settings/tokens
   - Нажмите **"Generate new token"** → **"Generate new token (classic)"**
   - Название: `mvp_autoar_push`
   - Срок действия: выберите нужный (например, 90 дней)
   - **Отметьте `repo`** (полный доступ к репозиториям)
   - Нажмите **"Generate token"**
   - **Скопируйте токен** (он показывается только один раз!)

2. **Запустите скрипт:**
   ```bash
   push_to_github.bat YOUR_TOKEN
   ```
   Замените `YOUR_TOKEN` на ваш токен.

## Ручной способ

### Шаг 1: Создайте Personal Access Token
Следуйте инструкциям выше.

### Шаг 2: Выполните команды

```bash
# Установите remote с токеном
git remote set-url origin https://YOUR_TOKEN@github.com/tal1b/mvp_autoar.git

# Отправьте код
git push -u origin main

# После успешного push, уберите токен из URL (для безопасности)
git remote set-url origin https://github.com/tal1b/mvp_autoar.git
```

### Шаг 3: При следующем push
GitHub попросит ввести:
- **Username:** `tal1b` (или ваш логин GitHub)
- **Password:** вставьте ваш Personal Access Token

## Альтернатива: Использование SSH

Если у вас настроен SSH ключ для GitHub:

```bash
git remote set-url origin git@github.com:tal1b/mvp_autoar.git
git push -u origin main
```

## Проверка

После успешного push проверьте репозиторий:
**https://github.com/tal1b/mvp_autoar**

---

## Важно

- ⚠️ **Никогда не публикуйте токен в открытом доступе!**
- ⚠️ Токен дает полный доступ к репозиториям - храните его в безопасности
- ⚠️ Если токен скомпрометирован, немедленно удалите его на GitHub

## Если у вас нет доступа к репозиторию

Если вы не можете получить доступ к `tal1b/mvp_autoar`, вам нужно:
1. Получить доступ от владельца репозитория (`tal1b`), или
2. Создать форк репозитория, или
3. Использовать свой собственный репозиторий

