# Portfolio Project Instructions

This Flutter web portfolio uses:
- **BLoC / Cubit** for state management
- **go_router** for navigation between pages
- **FVM** for a consistent Flutter SDK toolchain
- a **Makefile** for fast common commands and workflows
- **GitHub Pages** for deployment (via GitHub Actions)

## Architecture

### Feature-first folder layout
Each feature is a self-contained module under `lib/features/<feature_name>/` with its own layers:

```
lib/
  features/
    <feature_name>/
      bloc/          # BLoC or Cubit + State + Event classes
      data/          # repositories, data sources, models
      view/          # pages and screens
      widgets/       # feature-local widgets
  shared/
    widgets/         # widgets reused across features (replaces lib/special_widgets/)
    theme/           # color constants, text styles
  main.dart          # app entry point: MaterialApp, theme, router
```

- `lib/main.dart` — app entry point. Builds the root `MaterialApp` with theme and routing.
- `lib/my_projects/` — legacy mini-app features (kept for reference; migrate to `lib/features/` on touch).
- `lib/extra_skills/` — design-pattern demos (kept for reference; migrate to `lib/features/` on touch).
- `lib/special_widgets/` — legacy shared widgets (kept for reference; new shared code goes in `lib/shared/widgets/`).
- Name files in `snake_case` (e.g. `home_page_bloc.dart`, `todo_tile.dart`).
- Do not import from one feature folder into another. Promote shared code into `lib/shared/widgets/` instead.

### State management
- Use **BLoC** for complex state with distinct events, or **Cubit** for simpler state without explicit events.
- Do **not** use `Provider` or introduce new `StatefulWidget` + `setState` for shared state.
- `StatefulWidget` + `setState` is acceptable only for purely local, ephemeral UI state (e.g. animation controllers, focus nodes) that never needs to be shared.
- Keep all business logic inside the BLoC/Cubit — never in `build` methods or widget classes.
- Expose state to the UI via `BlocBuilder`, `BlocListener`, or `BlocConsumer`.

### Navigation
- Route configuration is driven by `go_router`. Add new routes in the router definition in `main.dart`.
- Use `context.go(...)` / `context.push(...)` — never use `Navigator.push` directly.

### Theme
- The global theme is defined inline in `MaterialApp` inside `main.dart`. Keep color and style constants there rather than scattering `Color(0x...)` literals across widgets.
- Reuse text styles via `Theme.of(context).textTheme` roles. Avoid ad-hoc `TextStyle(...)` literals inside widgets.

### Handling old / legacy code that causes errors
- **If any existing code (in `lib/my_projects/`, `lib/extra_skills/`, or `lib/special_widgets/`) causes a compile or analysis error, comment it out** with a `// TODO: migrate to feature architecture` note rather than deleting it or refactoring it beyond the minimum needed to make the app compile.
- Never delete legacy code outright — comment it out so it can be reviewed and migrated later.

### Adding a new portfolio project
1. Create a feature folder at `lib/features/<name>/` with `bloc/`, `data/`, `view/`, and `widgets/` sub-folders as needed.
2. Add a button entry to the `projectButtonsList` in `lib/main.dart`.
3. Register its route in the `go_router` config in `main.dart`.
4. Do not import the new feature from any other feature folder.

### Adding a new design-pattern demo
1. Create a feature folder at `lib/features/<pattern_name>/` following the same structure.
2. Register it in the relevant list in `lib/main.dart`.

## Pubspec
- Keep `dependencies:` and `dev_dependencies:` sorted **alphabetically (A → Z)**.
- Use `fvm flutter pub get` (via `make get`) — never a global `flutter` command.

## Workflow
- Use `fvm flutter` instead of a global `flutter` command.
- Run common tasks via `make`.
- **Run `make analyze` after every set of changes** and fix any new errors before reporting done.

## Recommended commands
- `make install` — install FVM SDK and fetch packages
- `make get` — fetch packages
- `make run` — run the app in Chrome
- `make analyze` — run static analysis
- `make test` — run unit/widget tests
- `make build-web` — build the web release

## Deployment
- The app is deployed to GitHub Pages automatically on every push to `main` via `.github/workflows/web.yml`.
- Never push broken code to `main` — CI will deploy immediately.

## Notes
- The project targets Flutter **3.35.0** (stable) pinned via FVM in `.fvm/fvm_config.json`.
- The `Makefile` should be the fastest way for contributors to run and build the app.
