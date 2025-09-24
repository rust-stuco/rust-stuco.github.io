/** @type {import('tailwindcss').Config} */

const defaultTheme = require("tailwindcss/defaultTheme");
const plugin = require("tailwindcss/plugin");

// Get path prefix for assets
const pathPrefix = process.env.ELEVENTY_PATH_PREFIX || "";

module.exports = {
  darkMode: "class",
  content: [
    "./**/*.{html,js,njk,md}",
    "!./node_modules/**/*"
  ],
  plugins: [
    require("@tailwindcss/typography"),
    require("@kamona/tailwindcss-perspective"),
    plugin(function ({ matchUtilities, theme }) {
      matchUtilities(
        {
          "text-shadow": (value) => ({
            textShadow: value,
          }),
        },
        { values: theme("textShadow") }
      );
    }),
  ],
  theme: {
    fontFamily: {
      display: ['"Zilla Slab"', "Fira Sans", ...defaultTheme.fontFamily.sans],
      sans: ["Fira Sans", ...defaultTheme.fontFamily.sans],
    },
    extend: {
      backgroundImage: {
        "intv-ultrablur": `url('${pathPrefix}/assets/img/intvultrablur3.jpg')`,
        qview:
          "linear-gradient(rgba(21,21,21,0.7), rgba(21,21,21,0.7)), url('../../qview/assets/img/rainbg.jpg')",
        "qt-action": `url('${pathPrefix}/assets/img/install-qt-action-bg.jpg')`,
        "pittsburgh-test":
          "url('https://upload.wikimedia.org/wikipedia/commons/5/51/Duquesne_Incline_%2850076338942%29_%28cropped%29.jpg')",
        "rust-s24": `url('${pathPrefix}/assets/img/crabs.jpg')`,
      },
      colors: {
        "intv-dark": "#0e141c",
        "intv-dark-accent": "#182b39",
        "intv-bright": "#1b65c6",
        "intv-bright-accent": "#0392BF",
        "intv-bright-dark": "#d3914",
        "intv-bright-accent-dark": "#0392BF",
        "pure-red": "rgb(255, 0, 0)",
        "pure-green": "rgb(0, 255, 0)",
        "pure-blue": "rgb(0, 0, 255)",
        "rust-dark-bg": "#051726",
      },
      textShadow: {
        sm: "0 0.063rem 0.125rem var(--tw-shadow-color)",
        DEFAULT: "0 0.125rem 0.25rem var(--tw-shadow-color)",
        lg: "0 0.5rem 1rem var(--tw-shadow-color)",
        xl: "0 1rem 2rem var(--tw-shadow-color)",
        xl_0: "0 0 2rem var(--tw-shadow-color)",
      },
      boxShadow: {
        intv: "0em 0.375em 0.75em #000",
      },
      transitionDuration: {
        DEFAULT: "100ms",
      },
    },
  },
};
