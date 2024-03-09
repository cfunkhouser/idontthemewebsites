/** @type {import('tailwindcss').Config} */

const DEFAULT_THEME = require('tailwindcss/defaultTheme');

module.exports = {
  content: ["./tailwind/**/*.{html,js}"],
  darkMode: 'selector',
  theme: {
    extend: {
      fontFamily: {
        sans: ['Roboto', ...DEFAULT_THEME.fontFamily.sans],
        serif: ['Roboto Slab', ...DEFAULT_THEME.fontFamily.serif],
        mono: ['Roboto Mono', ...DEFAULT_THEME.fontFamily.mono]
      },
    },
  },
  plugins: [],
}