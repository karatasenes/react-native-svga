import React from 'react';
import { StyleSheet, View } from 'react-native';
import { SvgaView } from 'react-native-svga';

const App = () => {
  return (
    <View style={styles.container}>
      <SvgaView
        source="https://example.com/animation.svga"
        style={styles.svga}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  svga: {
    width: 200,
    height: 200,
  },
});

export default App;
