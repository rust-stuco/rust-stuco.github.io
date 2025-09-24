const EleventyNavigationPlugin = require("@11ty/eleventy-navigation");
const { EleventyHtmlBasePlugin } = require("@11ty/eleventy");

const markdownIt = require("markdown-it")
const markdownItAttrs = require("markdown-it-attrs")

const markdownItOptions = {
  html: true,
  breaks: true,
  linkify: true
}

const markdownLib = markdownIt(markdownItOptions).use(markdownItAttrs)

module.exports = function(eleventyConfig) {
  eleventyConfig.setLibrary("md", markdownLib)
  eleventyConfig.addPlugin(EleventyNavigationPlugin);
  eleventyConfig.addPlugin(EleventyHtmlBasePlugin);  

  // Copy assets
  eleventyConfig.addPassthroughCopy("assets/img/**/*")
  eleventyConfig.addPassthroughCopy("assets/js/**/*")
  eleventyConfig.addPassthroughCopy("assets/fonts/**/*")
  eleventyConfig.addPassthroughCopy("assets/pdf/**/*")
  eleventyConfig.addPassthroughCopy("hw/**/*")
  eleventyConfig.addPassthroughCopy("old/**/*")
  eleventyConfig.ignores.add("old/**/*")

  // Copy favicon stuff
  eleventyConfig.addPassthroughCopy("*.png")
  eleventyConfig.addPassthroughCopy("*.svg")
  eleventyConfig.addPassthroughCopy("*.ico")
  eleventyConfig.addPassthroughCopy("site.webmanifest")
  eleventyConfig.addPassthroughCopy("browserconfig.xml")

  eleventyConfig.addFilter("toISO", (dateObj) => {
    return dateObj.toISOString().substring(0, 10);
  });

  return {
    pathPrefix: process.env.ELEVENTY_PATH_PREFIX || ""
  }
};
