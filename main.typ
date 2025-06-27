#import "@preview/slydst:0.1.4": *

#show: slides.with(
  title: "Разработка графического интерфейса образовательной платформы с использованием Svelte",
  subtitle: "Саратовский государственный университет им. Н. Г. Чернышевского
Кафедра математической кибернетики и компьютерных наук",
  authors: (
    "Подготовил студент 251 группы Толстова Р.С.
Научный руководитель: заведующий кафедрой доцент, к. ф.-м. н. С. В. Миронов"
  ),
  layout: "large",
  ratio: 4 / 3,
  title-color: none,
)

#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Outline

#outline()


== Постановка задачи

/ Цель работы: --- разработка части графического интерфейса образовательной платформы MergeMinds с использованием Svelte.

/ Платформа: --- Web.

*Задачи:*

- провести анализ требований к интерфейсам образовательных платформ и существующих технологических решений;
- изучить особенности Svelte, включая его экосистему и методы оптимизации;
- спроектировать архитектуру интерфейса, реализовать ключевые модули (авторизация, курсовая навигация, интерактивные элементы);
- создать взаимодействие с существующим backend-сервисом в соответствии с принципами REST API.

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
