const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/components/**/*.html.erb',
    './app/components/**/*.rb'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      animation: {
        flash: 'appear-then-fade 4s both',
      }
    },
  },
  daisyui: {
    themes: [
      {
        orderMinatorLight: {
          "primary": "#ff6347",
          "secondary": "#4db6ac",
          "accent": "#00a0e4",
          "neutral": "#333333",
          "base-100": "#f9f7f5",
          "info": "#3abff8",
          "success": "#36d399",
          "warning": "#fbbd23",
          "error": "#f87272",
        },
      },
      {
        orderMinatorDark: {
          "primary": "#ffa600",
          "secondary": "#00796B",
          "accent": "#4caf4f",
          "neutral": "#ffffff",
          "base-100": "#303030",
          "info": "#3abff8",
          "success": "#36d399",
          "warning": "#fbbd23",
          "error": "#f87272"
        },
      },
    ],
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
    require("daisyui")
  ],
}
