module.exports = {
  future: {
    removeDeprecatedGapUtilities: true,
    purgeLayersByDefault: true,
  },
  purge: [],
  theme: {
      fontFamily: {
          'sans': ['Roboto']
      },
      extend: {
          colors: {
              'sungolo': {
                  default: '#df6565',
                  dark: '#db5151'
              },
              'porsche': '#dfab65',
              'vivid-violet': '#914291',
              'butterfly-bush': {
                  default: '#614f99',
                  dark: '#4b3d76'
              },
              'kashmir-blue': '#466f8f',
              'chenin': '#dfca65',
              'wild-willow': '#c3d762',
              'apple': '#51b251'
          }
      },
  },
  variants: {
      borderRadius: ['responsive', 'hover']
  },
  plugins: [],
}
