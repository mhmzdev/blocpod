## BlocPod
BlocPod - I'm very poor with naming stuff, I just extracted this as a mix of `bloc` + `provider` = `blocpod`

Just an experimental framework that I'm playing around. Overall its a mix of `provider` and `flutter_bloc`. Overall `provider` is being used as state for each screen (viewModel if you are a stacked person) and `flutter_bloc` is mainly used for business logic.

### Project Structure
- _template
    - This the most important folder here, as I work with `bloc` using 4 layers:
        - `cubit.dart`
        - `state.dart`
        - `repository.dart`
        - `data_provider.dart`
    - So, this is powered with `hygen` (npm package) that helps me in generating all the boilerplate code.
        - screen
        - cubits
        - providers

- configs
    - Controls the app theming, spaces, typography etc.
    - `extensions` might be put here as well
- cubits
    - Since I'm a `cubit/state` person not an `event/state` so all the cubits goes here.
    - It will have simple and nested cubits (both)
- models
    - All the application global model classes will be used here.
    - I have some local models as well e.g. `bottom_bar/item_model.dart`
- providers
    - `ChangeNotifier` that will be used all across the apps will be here
    - If a `ChangeNotifier` is specifically managing state of a screen it will be put in `screen/screen_name/_state.dart`
- router
    - This manages the overall navigation of the app with help of `configs/extension/_string.dart` where an extension is written for `String` class and I mostly prefer named Navigation.
- services
    - All the services goes here e.g. Api, AppCache service etc.
- ui
    - animations
    - painters
    - screens
        - `screen_name.dart`
        - `_state.dart`
        - If some widgets are required only at one screen the will be put in `screen/widgets/` folder
    - widgets
        - core
        - design
        - headless
- uitls
    - I'm putting some helper function here, utils functions
        - snackbars
        - dialogs
        - assets etc.