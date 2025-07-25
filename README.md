# OpenAI DALL·E AsyncImage SwiftUI

SwiftUI view that asynchronously loads and displays an OpenAI image from open API

### Please star the repository if you believe continuing the development of this package is worthwhile. This will help me understand which package deserves more effort.

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fswiftuiux%2Fopenai-async-image-swiftui%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/swiftuiux/openai-async-image-swiftui)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fswiftuiux%2Fopenai-async-image-swiftui%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/swiftuiux/openai-async-image-swiftui)

## [Example for the package](https://github.com/swiftuiux/openai-async-image-swiftui-example)
## [Documentation(API)](https://swiftpackageindex.com/swiftuiux/openai-async-image-swiftui/main/documentation/openai_async_image_swiftui)


## Features
- [x] Supports multiple platforms: iOS, macOS, watchOS, and tvOS  
- [x] Customizable with SwiftUI Image properties (e.g., `renderingMode`, `resizable`, `antialiased`)  
- [x] Configurable transport layer via custom `Loader`  
- [x] Designed with interfaces, not implementations  
- [x] Fully leverages Swift's new concurrency model  

 ![OpenAI AsyncImage SwiftUI](https://github.com/swiftuiux/openai-async-image-swiftui/blob/main/image/sun_watch.png) 

## How to use

### 1. Get your API key from OpenAI
[Where do I find my Secret API Key?](https://help.openai.com/en/articles/4936850-where-do-i-find-my-secret-api-key)


### 2. Override the default loader at Environment with you apiKey

```swift
    let apiKey = "your API KEY"
    let endpoint = OpenAIImageEndpoint.get(with: apiKey)
    let loader = OpenAIDefaultLoader(endpoint: endpoint)
    OpenAIDefaultLoaderKey.defaultValue = loader
```

### 3. Add **OpenAIAsyncImage** to your code

```swift
    OpenAIAsyncImage(prompt: .constant("sun"))
```
or with custom **ViewBuilder**

```swift
    OpenAIAsyncImage(prompt: $imageText, size: .dpi1024){ state in
        switch state{
            case .loaded(let image) :
            image
                .resizable()
                .scaledToFill()
            case .loadError(let error) : Text(error.localizedDescription)
            case .loading : ProgressView()
        }
    }
```

| Param | Description |
| --- | --- |
| prompt | A text description of the desired image(s). The maximum length is 1000 characters |
| size | The size of the generated images. Must be one of 256x256, 512x512, or 1024x1024 |
| tpl | Custom view builder tpl |
| loader | Custom loader if you need something specific|

 ![OpenAI AsyncImage SwiftUI](https://github.com/swiftuiux/openai-async-image-swiftui/blob/main/image/appletv_art.png) 

## Documentation(API)
- You need to have Xcode 13 installed in order to have access to Documentation Compiler (DocC)
- Go to Product > Build Documentation or **⌃⇧⌘ D**


![OpenAI AsyncImage SwiftUI](https://github.com/swiftuiux/openai-async-image-swiftui/blob/main/image/sun_11.png) 

## More Stable Diffusion examples 

### Replicate toolkit for swift. Set of diffusion models
Announced in 2022, OpenAI's text-to-image model DALL-E 2 is a recent example of diffusion models. It uses diffusion models for both the model's prior (which produces an image embedding given a text caption) and the decoder that generates the final image.
In machine learning, diffusion models, also known as diffusion probabilistic models, are a class of latent variable models. They are Markov chains trained using variational inference. The goal of diffusion models is to learn the latent structure of a dataset by modeling the way in which data points diffuse through the latent space.
Diffusion models can be applied to a variety of tasks, including image denoising, inpainting, super-resolution, and image generation. For example, an image generation model would start with a random noise image and then, after having been trained reversing the diffusion process on natural images, the model would be able to generate new natural images. 
[Replicate kit](https://github.com/swiftuiux/replicate-kit-swift)


![The concept](https://github.com/swiftuiux/replicate-kit-swift/raw/main/img/image_02.png) 

### CoreML Stable Diffusion
[The example app](https://github.com/swiftuiux/coreml-stable-diffusion-swift-example) for running text-to-image or image-to-image models to generate images using Apple's Core ML Stable Diffusion implementation

![The concept](https://github.com/swiftuiux/coreml-stable-diffusion-swift-example/blob/main/img/img_01.png) 
