# nano_health_suite

Screens

<img width="364" alt="Screen Shot 2023-06-11 at 22 28 26" src="https://github.com/onurgurell/nano_health_suite/assets/69406005/6daf84cb-0afe-4628-97f7-6e83fcbfc470">

<img width="364" alt="Screen Shot 2023-06-11 at 22 28 33" src="https://github.com/onurgurell/nano_health_suite/assets/69406005/2ffa4bbf-b7c1-4245-b398-6893670ccaaf">

<img width="364" alt="Screen Shot 2023-06-11 at 22 28 38" src="https://github.com/onurgurell/nano_health_suite/assets/69406005/2aad62fe-fa2f-43d2-bde7-2369eaec3df3">

<img width="364" alt="Screen Shot 2023-06-11 at 22 28 45" src="https://github.com/onurgurell/nano_health_suite/assets/69406005/c2c9c828-8363-4484-b3ff-6ab1d8e69913">

Clean Architeture

Data

The data layer is the outermost layer of the application and is responsible for communicating with the server-side or a local database and data management logic. It also contains repository implementations.

Repository Impl

The connection between the Data layer and the Domain layer is established through repositories, which serve as actual implementations in the Domain layer. These repositories are responsible for bringing data from various sources together.

Repositories

Abstract classes that define the expected functionality of outer layers.

BLoc

Receive the events from the views and interact with use cases accordingly. Emit the state according to the data received from the use cases. Bloc does not know about the view at all. It communicates in the form of states and events only.

Presentation

The presentation layer is the most framework-dependent layer. It is responsible for all the UI and handling the events in the UI. It does not contain any business logic.

Widget

Widgets notify the events and listen to the states emitted from the Bloc.


What is used in this project?

BLoc for state managment

Get it Package used as dependency injection

Dartz Functional Programming

Equtable to compare objects
