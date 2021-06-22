module.exports = {
  purge: [
    './app/**/*.html.*',
    './app/**/*.js',
  ],
  darkMode: 'media', // or 'media' or 'class'
  theme: {
    extend: {},
  },
  variants: {
    extend: {
      brightness: ['hover'],
    },
  },
  plugins: [],
}
