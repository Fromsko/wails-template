// vite.config.ts
import Components from 'unplugin-vue-components/vite'
import AutoImport from 'unplugin-auto-import/vite'
import vueDevTools from 'vite-plugin-vue-devtools'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import { fileURLToPath, URL } from 'node:url'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueDevTools(),
    AutoImport({
      dts: './src/types/auto-imports.d.ts',
      imports: [
        'vue',
        'vue-router',
        {
          axios: [
            // default imports
            ['default', 'axios']
          ]
        },
        {
          from: 'vue-router',
          imports: ['RouteLocationRaw'],
          type: true
        }
      ]
    }),
    Components({
      dts: './src/types/components.d.ts',
      types: [
        {
          from: 'vue-router',
          names: ['RouterLink', 'RouterView']
        }
      ]
    })
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
      '@views': fileURLToPath(new URL('./src/views', import.meta.url)),
      '@components': fileURLToPath(new URL('./src/components', import.meta.url))
    }
  }
})
