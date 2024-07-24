# react-native-svga

SVGA Player for React Native

## Installation

```sh
npm install react-native-svga
```

## Usage


```js 
import { SvgaView } from 'react-native-svga';

// ...

<SvgaView
    source={{uri: "http://example.com/test.svga"}}
    style={{
        position: "absolute",
        top: 0,
        left: 0,
        zIndex: 1,
        width: 150,
        height: 150
    }}
/>
```


## Contributing

See the [contributing guide](CONTRIBUTING.md) to learn how to contribute to the repository and the development workflow.

## License

MIT

---

Made with [create-react-native-library](https://github.com/callstack/react-native-builder-bob)
