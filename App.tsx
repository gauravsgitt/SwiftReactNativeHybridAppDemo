/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import type { ViewStyle } from 'react-native';
import { StatusBar, Text, useColorScheme, View } from 'react-native';
import {
  EdgeInsets,
  SafeAreaProvider,
  useSafeAreaInsets,
} from 'react-native-safe-area-context';

function App() {
  const isDarkMode = useColorScheme() === 'dark';

  return (
    <SafeAreaProvider>
      <StatusBar barStyle={isDarkMode ? 'light-content' : 'dark-content'} />
      <AppContent />
    </SafeAreaProvider>
  );
}

const getContainerStyle = (safeAreaInsets: EdgeInsets): ViewStyle => ({
  flex: 1,
  // paddingTop: safeAreaInsets.top,
  alignItems: 'center',
  justifyContent: 'center',
});

function AppContent() {
  const safeAreaInsets = useSafeAreaInsets();

  return (
    <View style={getContainerStyle(safeAreaInsets)}>
      <Text>This is my React Native Screen</Text>
    </View>
  );
}

export default App;
