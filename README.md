# 🎮 Pokédex App - Global66

Una aplicación Flutter moderna que consume la [PokéAPI](https://pokeapi.co/) para mostrar información detallada de Pokémon, implementando Clean Architecture, buenas prácticas de desarrollo y un diseño UI/UX atractivo.

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📋 Tabla de Contenidos

- [Características](#-características)
- [Requisitos Previos](#-requisitos-previos)
- [Instalación y Ejecución](#-instalación-y-ejecución)
- [Arquitectura](#-arquitectura)
- [Tecnologías y Dependencias](#-tecnologías-y-dependencias)
- [Patrones de Diseño](#-patrones-de-diseño)
- [Principios de Código Limpio](#-principios-de-código-limpio)
- [Seguridad](#-seguridad)
- [Internacionalización (I18N)](#-internacionalización-i18n)
- [Testing](#-testing)
- [Uso de IA](#-uso-de-ia)
- [Estructura del Proyecto](#-estructura-del-proyecto)

---

## ✨ Características

- 📱 **Lista de Pokémon** con scroll infinito
- 🔍 **Filtrado por tipos** (Agua, Fuego, Planta, etc.)
- 📄 **Detalle de Pokémon** con información completa (stats, habilidades, debilidades)
- ❤️ **Favoritos** con persistencia local usando Isar Database
- 🌍 **Multiidioma** (Español e Inglés)
- 🎨 **UI/UX moderna** con Atomic Design
- 🔄 **Pull to refresh** y manejo de estados de carga/error

---

## 📦 Requisitos Previos

- Flutter SDK >= 3.4.3
- Dart SDK >= 3.4.3
- Android Studio / VS Code
- Xcode (para iOS)

---

## 🚀 Instalación y Ejecución

### 1. Clonar el repositorio

```bash
git clone https://github.com/julianza32/poke-app.git
cd poke-app
```

### 2. Instalar dependencias

```bash
flutter pub get
```

### 3. Generar código (Freezed, Riverpod, JSON Serializable, Isar)

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 4. Generar archivos de localización

```bash
flutter gen-l10n
```

### 5. Ejecutar la aplicación

```bash
# Modo debug
flutter run

# Modo release
flutter run --release
```

### 6. Ejecutar tests

```bash
flutter test
```

---

## 🏗️ Arquitectura

La aplicación implementa **Clean Architecture** dividida en capas bien definidas, siguiendo los principios de separación de responsabilidades y dependencia hacia el centro.

```
┌─────────────────────────────────────────────────────────┐
│                    PRESENTATION                         │
│  (Pages, Widgets, Providers/Notifiers, State)          │
├─────────────────────────────────────────────────────────┤
│                      DOMAIN                             │
│  (Entities, Repositories Interfaces, Use Cases)        │
├─────────────────────────────────────────────────────────┤
│                       DATA                              │
│  (Models, DTOs, Data Sources, Repository Impl, Mappers)│
└─────────────────────────────────────────────────────────┘
```

### Flujo de Datos

```
UI → Provider/Notifier → Use Case → Repository → Data Source → API/DB
                                         ↓
                                      Mapper
                                         ↓
                                      Entity
```

---

## 🛠️ Tecnologías y Dependencias

| Categoría | Tecnología | Propósito |
|-----------|------------|-----------|
| **State Management** | Riverpod + riverpod_annotation | Gestión de estado reactiva y type-safe |
| **Networking** | Dio | Cliente HTTP con interceptores |
| **Database** | Isar | Base de datos NoSQL local de alto rendimiento |
| **Code Generation** | Freezed + json_serializable | Modelos inmutables y serialización |
| **Navigation** | GoRouter | Navegación declarativa |
| **Localization** | flutter_localizations + intl | Internacionalización |
| **Testing** | flutter_test + mocktail | Unit testing con mocks |

---

## 🎯 Patrones de Diseño

### 1. **Repository Pattern**
Abstrae el acceso a datos detrás de una interfaz, permitiendo cambiar la implementación sin afectar el dominio.


### 2. **Use Case Pattern (Interactor)**
Encapsula una acción de negocio específica, siguiendo el principio de responsabilidad única.


### 3. **Dependency Injection**
Usando Riverpod para inyectar dependencias de forma declarativa y testeable.


### 4. **State Pattern (Notifier)**
Gestión de estados complejos con Riverpod Notifiers.


### 5. **Mapper Pattern**
Transforma datos entre capas sin acoplar modelos de API con entidades de dominio.



### 6. **Atomic Design (UI)**
Organización de componentes UI en niveles de complejidad.

```
atoms/        → Componentes básicos (Text, Image, Button)
molecules/    → Combinación de atoms (Field, Tooltip, GenderBar)
organisms/    → Componentes complejos (ItemPokemon, InfinitePokemonList)
templates/    → Layouts de página (PageTemplate)
pages/        → Pantallas completas
```

---

## 📐 Principios de Código Limpio

### SOLID

| Principio | Aplicación |
|-----------|------------|
| **S** - Single Responsibility | Cada clase tiene una única responsabilidad (ej: `PokemonMapper` solo mapea, `PokemonRemoteDataSource` solo consume API) |
| **O** - Open/Closed | Las entities están cerradas a modificación, abiertas a extensión mediante `copyWith()` |
| **L** - Liskov Substitution | Las implementaciones de `PokemonRepository` pueden sustituirse sin romper el código |
| **I** - Interface Segregation | Interfaces específicas (`PokemonLocalDataSource` vs `PokemonRemoteDataSource`) |
| **D** - Dependency Inversion | Las capas superiores dependen de abstracciones, no de implementaciones concretas |

### KISS (Keep It Simple, Stupid)
- Uso de `switch` expressions en lugar de if-else anidados
- Métodos pequeños y focalizados
- Nombres descriptivos que eliminan necesidad de comentarios

### DRY (Don't Repeat Yourself)
- Utilidades centralizadas en `core/utils/`
- Componentes UI reutilizables
- Constantes de configuración en `core/constants/`

---

## 🔒 Seguridad

### 1. **Configuración Segura de Dio**


### 2. **Validación de Tipos Permitidos**



### 3. **Manejo Seguro de URLs**



### 4. **Persistencia Local Segura**
- Uso de Isar Database con esquemas tipados
- No se almacenan datos sensibles
- IDs de Pokémon como strings para evitar overflow

### 5. **Manejo de Errores**
- Try-catch en todas las operaciones de red
- Estados de error en la UI para feedback al usuario
- No se exponen detalles de errores internos al usuario

---

## 🌍 Internacionalización (I18N)

La aplicación soporta **Español** e **Inglés** usando el sistema de localización de Flutter.


## 🧪 Testing

### Estructura de Tests

```
test/
├── features/
│   └── pokemon/
│       └── data/
│           └── repositories/
│               └── pokemon_repository_impl_test.dart
└── core/
    └── utils/
        └── url_parser_test.dart
```


### Ejecutar Tests

```bash
# Todos los tests
flutter test

# Con coverage
flutter test --coverage

# Un archivo específico
flutter test test/features/pokemon/data/repositories/pokemon_repository_impl_test.dart
```

---

## 🤖 Uso de IA

### Herramienta Utilizada
**GitHub Copilot** como asistente de desarrollo integrado en VS Code.

### Casos de Uso de IA

| Uso | Descripción |
|-----|-------------|
| **Arquitectura** | Mejora de capas Clean Architecture y organización de carpetas |
| **Refactoring** | Mejora de código existente siguiendo principios SOLID/KISS/DRY |
| **Debugging** | Diagnóstico y solución de errores de Flutter/Dart |
| **Code Generation** | Creación de modelos Freezed, providers Riverpod, mappers |
| **Testing** | Generación de unit tests con mocks |
| **Documentación** | Apoyo con este README y comentarios de código |



## 📁 Estructura del Proyecto

```
lib/
├── main.dart                          # Entry point
├── config/
│   └── routes.dart                    # Configuración de rutas (GoRouter)
├── core/
│   ├── constants/
│   │   └── app_constants.dart         # Constantes globales y configuración
│   ├── database/
│   │   └── isar_config.dart           # Configuración de Isar DB
│   ├── error/
│   │   └── exceptions.dart            # Excepciones personalizadas
│   ├── localizations/
│   │   ├── app_localizations.dart     # Archivos generados de i18n
│   │   └── localization_helper.dart   # Helper para traducciones dinámicas
│   ├── network/
│   │   └── dio_config.dart            # Configuración segura de Dio
│   └── utils/
│       └── url_parser.dart            # Utilidades para parsing de URLs
└── features/
    └── pokemon/
        ├── data/
        │   ├── datasources/
        │   │   ├── pokemon_remote_data_source.dart
        │   │   └── pokemon_local_data_source.dart
        │   ├── mappers/
        │   │   └── pokemon_mapper.dart
        │   ├── models/
        │   │   └── pokemon_model.dart  # DTOs con Freezed
        │   └── repositories/
        │       └── pokemon_repository_impl.dart
        ├── domain/
        │   ├── entities/
        │   │   └── pokemon.dart        # Entidades de dominio
        │   ├── repositories/
        │   │   └── pokemon_repository.dart  # Interfaces
        │   └── usecases/
        │       ├── get_pokemons.dart
        │       ├── get_pokemon_by_id.dart
        │       └── ...
        └── presentation/
            ├── desing/                 # Atomic Design
            │   ├── atoms/
            │   ├── molecules/
            │   ├── organisms/
            │   └── templates/
            ├── pages/
            │   ├── pokemon_list_page.dart
            │   ├── pokemon_page.dart
            │   └── favorites_page.dart
            ├── providers/
            │   └── pokemon_providers.dart
            ├── state/
            │   ├── fetch_state.dart
            │   └── pagination_state.dart
            └── utils/
                └── pokemon_style_utils.dart
```

---

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para más detalles.

---

## 👨‍💻 Autor

**Kevin Julian Zarate Tavera**

---

*Desarrollado con ❤️ y Flutter*
