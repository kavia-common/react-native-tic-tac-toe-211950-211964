import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import reactNativeWeb from 'vite-plugin-react-native-web';

export default defineConfig({
  plugins: [reactNativeWeb(), react()],
  resolve: {
    alias: {
      'react-native': 'react-native-web',
    },
  },
  server: {
    port: 5173,
    strictPort: false,
    // Allow Kavia preview hosts (prevents "Blocked request. This host is not allowed.")
    allowedHosts: [
      'vscode-internal-16399-qa.qa01.cloud.kavia.ai',
      '.kavia.ai',
    ],
  },
});
