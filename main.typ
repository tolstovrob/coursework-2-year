#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Разработка графического интерфейса образовательной платформы с использованием Svelte",
  subtitle: "Саратовский государственный университет им. Н. Г. Чернышевского
Кафедра математической кибернетики и компьютерных наук",
  authors: (
    "Подготовил студент 251 группы Толстова Р.С.
Научный руководитель: зав. каф. доцент, к. ф.-м. н. Миронов С.В."
  ),
  layout: "large",
  ratio: 4 / 3,
  title-color: none,
)

#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Постановка задачи

/ Цель работы: --- разработка части графического интерфейса образовательной платформы MergeMinds с использованием Svelte.

/ Платформа: --- Web.

*Задачи:*

- провести анализ требований к интерфейсам образовательных платформ и существующих технологических решений;
- изучить особенности Svelte, включая его экосистему и методы оптимизации;
- спроектировать архитектуру интерфейса, реализовать ключевые модули (авторизация, курсовая навигация, интерактивные элементы);
- создать взаимодействие с существующим backend-сервисом в соответствии с принципами REST API.

= Инфраструктура решения

== Технологический стек

#table(
  columns: (1fr, 1fr),
  inset: 10pt,
  stroke: none,
  align: top,
  table.header([*Frontend*], [*Уже существующий backend*]),
)[
  - Svelte
  - SvelteKit
  - TailwindCSS
  - Shadcn-svelte
  - Zod
  - TanStack Query
  - Vite
][
  - Go
  - Gin
  - PostgreSQL
  - Dragonfly
  - Just
  - Docker
]

== Архитектура проекта

#figure(image("images/project-architecture.png"), caption: "Схема внешнего взаимодействия", supplement: none)

#figure(image("images/fsd.png"), caption: "Архитектура клиента", supplement: none)

= Реализация

== Страница входа

#figure(image("images/login/desktop-light.png", height: 1fr), caption: "Светлая тема, настольный клиент", supplement: none)

#figure(image("images/login/desktop-dark.png", height: 1fr), caption: "Тёмная тема, настольный клиент", supplement: none)

#grid(columns: (1fr,  1fr), fill: none, gutter: 1em)[
  #figure(image("images/login/mobile-light.png", height: 1fr), caption: "Светлая тема, мобильный клиент", supplement: none)][
  #figure(image("images/login/mobile-dark.png", height: 1fr), caption: "Тёмная тема, мобильный клиент", supplement: none)]

#figure(image("images/login/errors.png", height: 1fr), caption: "Пример ошибок валидации данных", supplement: none)

== Страница регистрации

#figure(image("images/register/desktop-light.png", height: 1fr), caption: "Светлая тема, настольный клиент", supplement: none)

#figure(image("images/register/desktop-dark.png", height: 1fr), caption: "Тёмная тема, настольный клиент", supplement: none)

#grid(columns: (1fr,  1fr), fill: none, gutter: 1em)[
  #figure(image("images/register/mobile-light.png", height: 1fr), caption: "Светлая тема, мобильный клиент", supplement: none)][
  #figure(image("images/register/mobile-dark.png", height: 1fr), caption: "Тёмная тема, мобильный клиент", supplement: none)]

#figure(image("images/register/errors.png", height: 1fr), caption: "Пример ошибок валидации данных", supplement: none)

== Обзор курсов

#figure(image("images/courses/desktop-light.png", height: 1fr), caption: "Светлая тема, настольный клиент", supplement: none)

#figure(image("images/courses/desktop-dark.png", height: 1fr), caption: "Тёмная тема, настольный клиент", supplement: none)

#grid(columns: (1fr,  1fr), fill: none, gutter: 1em)[
  #figure(image("images/courses/mobile-light.png", height: 1fr), caption: "Светлая тема, мобильный клиент", supplement: none)][
  #figure(image("images/courses/mobile-dark.png", height: 1fr), caption: "Тёмная тема, мобильный клиент", supplement: none)]

== Обзор курсов: тезисно

- У курсов есть дисциплины. Дисциплины --- это классы курсов.

- У дисциплин есть иконки. Они красивые и наклоняются при наведении.

- У курсов есть админы. Иконки админов внизу карточки. При наведении на иконку появляется краткая информация о пользователе.

- Курсы можно искать. Для этого есть поле выше.

- Курсов много, поэтому есть пагинация.

== Страница курса

#figure(image("images/course/desktop-light.png", height: 1fr), caption: "Светлая тема, настольный клиент", supplement: none)

#figure(image("images/course/desktop-dark.png", height: 1fr), caption: "Тёмная тема, настольный клиент", supplement: none)

#grid(columns: (1fr,  1fr), fill: none, gutter: 1em)[
  #figure(image("images/course/mobile-light.png", height: 1fr), caption: "Светлая тема, мобильный клиент", supplement: none)][
  #figure(image("images/course/mobile-dark.png", height: 1fr), caption: "Тёмная тема, мобильный клиент", supplement: none)]

== Страница курса: тезисно

- Курс разделён на блоки.

- Есть первый блок --- это основная информация о курсе.

- Остальные блоки задаются админами.

- Есть разные типы заданий. У каждого из типов своя иконка.

== Выводы

- проведён анализ требований к интерфейсам образовательных платформ и существующих технологических решений;
- рассмотрены особенности Svelte, включая его экосистему и методы оптимизации;
- спроектирована архитектура интерфейса, реализованы ключевые модули (авторизация, курсовая навигация, интерактивные элементы);
- создано взаимодействие с существующим backend-сервисом в соответствии с принципами REST API.

#heading(outlined: false)[Спасибо за внимание.]

== Список использованных источников
#bibliography(full: true, style: "gost-r-705-2008-numeric","thesis.bib")