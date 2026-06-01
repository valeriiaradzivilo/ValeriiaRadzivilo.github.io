# Portfolio Project Instructions

This Flutter web portfolio uses:
- **Provider** for local state management where needed
- **go_router** for navigation between pages
- **FVM** for a consistent Flutter SDK toolchain
- a **Makefile** for fast common commands and workflows
- **GitHub Pages** for deployment (via GitHub Actions)

## Architecture

### Folder layout
- `lib/main.dart` — app entry point. Builds the root `MaterialApp` with theme and routing.
- `lib/my_projects/` — self-contained mini-app features shown as portfolio entries (e.g. `calculator.dart`, `calendar.dart`, `to_do_app/`).
- `lib/extra_skills/` — design-pattern demos (e.g. `abstract_factory.dart`, `builder_design_pattern/`).
- `lib/special_widgets/` — reusable widgets shared across the portfolio UI (e.g. `contact_widget.dart`, `project_buttons.dart`).
- Name files in `snake_case` (e.g. `home_page_api.dart`, `todo_tile.dart`).
- Do not import from one feature folder into another. Promote shared code into `lib/special_widgets/` instead.

### State management
- Use `StatefulWidget` + `setState` for simple local UI state.
- Use `Provider` only where state must be shared across widget subtrees. Do not introduce BLoC or Cubit.
- Keep business logic out of `build` methods — extract it into methods or `StatefulWidget` state classes.

### Navigation
- Route configuration is driven by `go_router`. Add new routes in the router definition in `main.dart`.
- Use `context.go(...)` / `context.push(...)` — never use `Navigator.push` directly.

### Theme
- The global theme is defined inline in `MaterialApp` inside `main.dart`. Keep color and style constants there rather than scattering `Color(0x...)` literals across widgets.
- Reuse text styles via `Theme.of(context).textTheme` roles. Avoid ad-hoc `TextStyle(...)` literals inside widgets.

### Adding a new portfolio project
1. Create a self-contained widget (or folder) under `lib/my_projects/<name>/`.
2. Add a button entry to the `projectButtonsList` in `lib/main.dart`.
3. If it requires a new route, register it in the `go_router` config.
4. Do not import the new feature from any other feature folder.

### Adding a new design-pattern demo
1. Create a self-contained widget under `lib/extra_skills/<pattern_name>/`.
2. Register it in the relevant list in `lib/main.dart`.

## Pubspec
- Keep `dependencies:` and `dev_dependencies:` sorted **alphabetically (A → Z)**.
- Use `fvm flutter pub get` (via `make pubget`) — never a global `flutter` command.

## Workflow
- Use `fvm flutter` instead of a global `flutter` command.
- Run common tasks via `make`.
- **Run `make analyze` after every set of changes** and fix any new errors before reporting done.

## Recommended commands
- `make install` — install FVM SDK and fetch packages
- `make pubget` — fetch packages
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
