# Инструкция по загрузке проекта на GitHub

## Проблема
Вы авторизованы в Git как `frametamer`, но репозиторий принадлежит `tal1b`. Нужна правильная аутентификация.

## Решение: Использование Personal Access Token

### Шаг 1: Создайте Personal Access Token

1. Перейдите на GitHub: https://github.com/settings/tokens
2. Нажмите **"Generate new token"** → **"Generate new token (classic)"**
3. Заполните форму:
   - **Note:** `mvp_autoar_push` (любое название)
   - **Expiration:** Выберите срок действия (например, 90 дней)
   - **Select scopes:** Отметьте `repo` (полный доступ к репозиториям)
4. Нажмите **"Generate token"**
5. **ВАЖНО:** Скопируйте токен сразу! Он показывается только один раз.

### Шаг 2: Используйте токен для push

Выполните следующие команды в терминале:

```bash
# Убедитесь, что remote настроен правильно
git remote set-url origin https://github.com/tal1b/mvp_autoar.git

# Сделайте push (GitHub попросит ввести логин и пароль)
git push origin main
```

**При запросе:**
- **Username:** `tal1b` (или ваш логин GitHub)
- **Password:** Вставьте Personal Access Token (НЕ ваш обычный пароль!)

### Альтернативный способ: Использовать токен в URL

Если хотите использовать токен напрямую в URL (менее безопасно):

```bash
# Замените YOUR_TOKEN на ваш токен
git remote set-url origin https://YOUR_TOKEN@github.com/tal1b/mvp_autoar.git
git push origin main
```

## Проверка

После успешного push проверьте репозиторий:
https://github.com/tal1b/mvp_autoar

---

**Примечание:** Если у вас нет доступа к репозиторию `tal1b/mvp_autoar`, вам нужно:
1. Получить доступ от владельца репозитория, или
2. Создать форк репозитория, или
3. Использовать свой собственный репозиторий



