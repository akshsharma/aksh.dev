import type { Config } from 'tailwindcss';
import forms from '@tailwindcss/forms';
import typography from '@tailwindcss/typography';
import aspectRatio from '@tailwindcss/aspect-ratio';
import plugin from 'tailwindcss/plugin';

const config: Config = {
  content: ['./src/**/*.{html,js,svelte,ts}'],
  darkMode: 'class',
  theme: {
    extend: {
      colors: {
        // Shared across both themes
        primary: 'var(--color-primary)',
        secondary: 'var(--color-secondary)',  // overridden in light mode via CSS vars
        accent: 'var(--color-accent)',

        // Named for dynamic use via CSS variables
        text: 'var(--color-text)',
        background: 'var(--color-background)',
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
      },
      boxShadow: {
        glow: '0 0 12px rgba(255, 0, 153, 0.4)',
      },
    },
  },
  plugins: [forms, typography, aspectRatio],
};

export default config;