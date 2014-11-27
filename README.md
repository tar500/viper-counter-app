# Counter #

Fork Notes:
- Original, lighter-weight counter app example can be found here https://github.com/mutualmobile/Counter
- This example uses "light" file structure vipergen template that can be found here https://github.com/tar500/viper-module-generator
- This example helps you to understand more how to connect modules and where to place dependecies setup code

Known issues:
- I was not covering new functionality (settings screen and reset button) with Unit Tests, you can try to do it yourself as an excercise :)
- I changed file names, so this project is no longer compatible with previously mentioned original Counter app
- Settings data manager is a singleton and may not show how to use VIPER properly, but a singleton for Settings is completely OK for me. If you are not sure about singletons usage practices, please refer to this article http://www.objc.io/issue-13/singletons.html 


Original description:

Counter is a simple app showing the basics of the [VIPER](http://mutualmobile.github.io/blog/2013/12/04/viper-introduction/) [architecture](http://www.objc.io/issue-13/viper.html), a version of Uncle Bob’s [Clean](http://blog.8thlight.com/uncle-bob/2011/11/22/Clean-Architecture.html) [Architecture](http://blog.8thlight.com/uncle-bob/2012/08/13/the-clean-architecture.html) for iOS apps. Counter shows the use of a View, Presenter and Interactor. It does not make use of a data store or a Wireframe for navigation.

The inspiration for Counter comes from Jon Reid’s UIViewController TDD [screencast](http://qualitycoding.org/uiviewcontroller-tdd/).
