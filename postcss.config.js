module.exports = {
	use: [
		"stylelint",
		"autoprefixer",
		"postcss-import",
		"postcss-nested",
    "postcss-custom-properties",
		"postcss-custom-media",
	],
	input: "src/entry.css",
	output: "public/styles.css",
	autoprefixer: {
		browsers: ['last 5 versions']
	},
	"local-plugins": true
};
