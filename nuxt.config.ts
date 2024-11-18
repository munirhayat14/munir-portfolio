// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-04-03',
  devtools: { enabled: true },
  css: [
    '@/assets/css/tailwind.css',
    'aos/dist/aos.css',
    'remixicon/fonts/remixicon.css'
  ],

  app: {
    head: {
      title: 'Munir Profile',
      meta: [
        { name: 'description', content: 'Portfolio of Munir, a skilled software developer.' },
        { name: 'keywords', content: 'JavaScript, PHP, Kubernetes, Developer, Portfolio' },
      ],
      link: [
        {
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap',
        },
      ],
    },
  },

  modules: ['@nuxtjs/tailwindcss'],
})