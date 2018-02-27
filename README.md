# PlaygroundCollectionViewCells

This project was created to test how you can use Swift Playgrounds with UI development. PlaygroundCollectionViewCells presents list of albums on screen. Albums can be two sizes: cd and lp. Lp albums have slighty bigger cell size.

All data presented in the app is just static text and image. Dummy networklayer is used when app is run in emulator and this same layer is replaced using protocol and dependency injection when project is run in playground. The idea is that you can change the data passed to UICollectionViewController and see how it affects the AlbumCells in real time. Just like you want to do in your project. Replace the real network requests with dummy implementation to test UI with any data you might want to use.

You can also see how the app looks like in different resolutions and in portrait and landscape mode. See [ScreenConfigurationHelper](PlaygroundCollectionViewCells/TestingCells.playground/Sources/ScreenConfigurationHelper.swift) for more details.
