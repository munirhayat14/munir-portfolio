module.exports = {
    root: true,
    env: {
        browser: true,
        es2021: true,
    },
    extends: [
        'eslint:recommended',
        'plugin:vue/vue3-recommended',
        '@vue/typescript/recommended',
        'prettier', // Disable ESLint rules that conflict with Prettier
    ],
    plugins: ['prettier'],
    rules: {
        'prettier/prettier': 'error', // Highlight Prettier issues as ESLint errors
        'vue/multi-word-component-names': 'off', // Turn off multi-word component rule
    },
};
