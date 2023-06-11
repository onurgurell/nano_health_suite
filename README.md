# nano_health_suite

Screens

![Simulator Screen Shot - iPhone 14 Pro - 2023-06-11 at 22 24 24](https://github.com/onurgurell/nano_health_suite/assets/69406005/878e6f38-f6aa-4925-8f79-a55caa4ba5a9)
![Simulator Screen Shot - iPhone 14 Pro - 2023-06-11 at 22 24 29](https://github.com/onurgurell/nano_health_suite/assets/69406005/217e7aea-7e13-49ae-a232-8cf18c31ad3a)
![Simulator Screen Shot - iPhone 14 Pro - 2023-06-11 at 22 24 33](https://github.com/onurgurell/nano_health_suite/assets/69406005/8e1e7e31-27d9-495b-8e7f-f1142bd6eaee)
![Simulator Screen Shot - iPhone 14 Pro - 2023-06-11 at 22 24 39](https://github.com/onurgurell/nano_health_suite/assets/69406005/c64cf16d-b406-462c-aba3-61178b27eec9)


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
