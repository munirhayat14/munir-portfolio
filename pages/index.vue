<template>
  <div class="bg-base-100 text-base-content">
    <!-- Navbar -->
    <div class="navbar fixed top-0 w-full bg-base-100 shadow z-10">
      <!-- Navbar Start -->
      <div class="navbar-start">
        <div class="dropdown">
          <button tabindex="0" class="btn btn-ghost lg:hidden">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h8m-8 6h16"
              />
            </svg>
          </button>
          <ul
            tabindex="0"
            class="menu menu-sm dropdown-content mt-3 w-52 p-2 bg-base-100 rounded-box shadow z-[1]"
          >
            <li><a href="#skills" class="hover-link uppercase">Skills</a></li>
            <li>
              <a href="#experience" class="hover-link uppercase">Experience</a>
            </li>
            <li>
              <a href="#projects" class="hover-link uppercase">Projects</a>
            </li>
            <li>
              <a href="#certificates" class="hover-link uppercase"
                >Certificates</a
              >
            </li>
          </ul>
        </div>
      </div>
      <!-- Navbar Center -->
      <div class="navbar-center hidden lg:flex">
        <ul class="menu menu-horizontal px-1">
          <li>
            <a
              href="#about"
              class="hover-link uppercase hover:bg-emerald-600 hover:text-gray-100"
              >About</a
            >
          </li>
          <li>
            <a
              href="#skills"
              class="hover-link uppercase hover:bg-emerald-600 hover:text-gray-100"
              >Skills</a
            >
          </li>
          <li>
            <a
              href="#experience"
              class="hover-link uppercase hover:bg-emerald-600 hover:text-gray-100"
              >Experience</a
            >
          </li>
          <!-- <li>
            <a
              href="#projects"
              class="hover-link uppercase hover:bg-emerald-600 hover:text-gray-100"
              >Projects</a
            >
          </li> -->
          <li>
            <a
              href="#certificates"
              class="hover-link uppercase hover:bg-emerald-600 hover:text-gray-100"
              >Certificates</a
            >
          </li>
        </ul>
      </div>
      <div class="navbar-end">
        <!-- <a class="btn">Button</a> -->
      </div>
    </div>

    <!-- Hero Section -->
    <header
      class="hero min-h-screen bg-base-100"
      data-aos="fade-down"
      id="about"
      style="position: relative"
    >
      <div class="hero-content flex-col lg:flex-row-reverse" style="z-index: 1">
        <img
          class="mask mask-hexagon"
          alt="Munir Bahrin Profile Picture"
          src="https://images.pexels.com/photos/3153203/pexels-photo-3153203.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        />
        <div class="pb-20 lg:pb-0 lg:pr-20">
          <h1 class="text-5xl font-bold">
            Hi, I'm <span class="text-emerald-600">Munir</span> Bahrin
          </h1>
          <p class="py-6 text-justify">
            I'm a
            <span class="font-bold">passionate software developer</span> with a
            knack for building
            <span class="font-bold"
              >dynamic, efficient, and scalable solutions</span
            >. With a solid engineering background and a constant drive to
            improve, I've developed expertise in
            <span class="font-bold">full-stack development, DevOps,</span> and
            <span class="font-bold">system optimization</span>.
          </p>
          <p class="py-6 text-justify">
            Currently, I work as a
            <span class="font-bold"
              >Senior Software Developer at Rapid Solutions</span
            >, where I specialize in crafting complex web applications,
            deploying containerized solutions, and collaborating with
            cross-functional teams to deliver meaningful results. I'm actively
            developing my expertise in CI/CD and DevOps, focusing on
            streamlining deployment workflows and optimizing infrastructure
            management.
          </p>
          <p class="py-6 text-justify">
            When I'm not coding, you’ll often find me
            <span class="font-bold">farming, reading</span>, spending quality
            time with <span class="font-bold">my wife and two children</span>,
            or participating in
            <span class="font-bold">local running events</span>. I believe in
            finding balance between work and life and enjoy embracing hobbies
            that keep me connected to both nature and my community.
          </p>
          <div class="flex justify-end gap-4 mt-4">
            <a
              href="mailto:munirbahrin@gmail.com"
              target="_blank"
              class="text-3xl hover:text-emerald-600 transition-colors duration-300"
            >
              <i class="ri-mail-line"></i>
              <!-- Email Icon -->
            </a>
            <a
              href="https://github.com/munirbahrin14"
              target="_blank"
              class="text-3xl hover:text-emerald-600 transition-colors duration-300"
            >
              <i class="ri-github-line"></i>
              <!-- GitHub Icon -->
            </a>
            <a
              href="https://linkedin.com/in/munirbahrin"
              target="_blank"
              class="text-3xl hover:text-emerald-600 transition-colors duration-300"
            >
              <i class="ri-linkedin-box-line"></i>
              <!-- LinkedIn Icon -->
            </a>
          </div>
        </div>
      </div>
      <div class="hero_wave">
        <svg
          class="waves"
          xmlns="http://www.w3.org/2000/svg"
          xmlns:xlink="http://www.w3.org/1999/xlink"
          viewBox="0 24 150 28"
          preserveAspectRatio="none"
          shape-rendering="auto"
        >
          <defs>
            <path
              id="gentle-wave"
              d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
            />
          </defs>
          <defs>
            <linearGradient
              id="wave-gradient"
              x1="0%"
              y1="0%"
              x2="100%"
              y2="0%"
            >
              <stop offset="0%" style="stop-color: rgba(239, 246, 255, 0.3)" />
              <stop
                offset="100%"
                style="stop-color: rgba(236, 253, 245, 0.7)"
              />
            </linearGradient>
            <path
              id="gentle-wave"
              d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
            />
          </defs>
          <g class="parallax">
            <use
              xlink:href="#gentle-wave"
              x="48"
              y="0"
              fill="rgba(236,253,245,0.7)"
            />
            <use
              xlink:href="#gentle-wave"
              x="48"
              y="3"
              fill="rgba(236,251,253,0.5)"
            />
            <use
              xlink:href="#gentle-wave"
              x="48"
              y="5"
              fill="rgba(239,246,255,0.3)"
            />
            <use
              xlink:href="#gentle-wave"
              x="48"
              y="7"
              fill="url(#wave-gradient)"
            />
          </g>
        </svg>
      </div>
    </header>

    <!-- Skills Section -->
    <template>
      <section class="bg-gradient-to-br from-blue-50 via-teal-50 to-emerald-50">
        <div class="container mx-auto px-6 lg:px-12 py-12">
          <h2 class="text-4xl font-extrabold text-center mb-12 text-gray-800">
            Skills & Tools
          </h2>
          <div class="grid gap-8 sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3">
            <div
              v-for="(category, index) in skills"
              :key="index"
              :class="'transition-opacity duration-500 delay-' + category.delay"
              class="bg-white p-8 rounded-xl shadow-lg hover:shadow-2xl transform hover:scale-105 transition-all duration-300"
            >
              <div class="flex items-center mb-6">
                <div
                  class="w-12 h-12 flex justify-center items-center bg-gradient-to-r from-indigo-300 to-purple-300 rounded-full text-white font-bold text-2xl"
                >
                  <i :class="category.icon"></i>
                </div>
                <h3 class="ml-4 text-2xl font-semibold text-gray-700">
                  {{ category.name }}
                </h3>
              </div>
              <ul class="grid grid-cols-1 lg:grid-cols-2 gap-4">
                <li
                  v-for="(tool, i) in category.stack"
                  :key="i"
                  class="flex items-center space-x-3 bg-gray-100 p-3 rounded-lg shadow-sm hover:bg-gray-200 transition"
                >
                  <img
                    :src="getIcon(tool)"
                    alt="icon"
                    class="w-8 h-8 object-contain"
                  />
                  <span class="text-gray-600 font-medium">{{ tool }}</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>
    </template>

    <!-- Experience Section -->
    <section
      id="experience"
      class="py-16 bg-base-100 section-background"
      data-aos="fade-right"
    >
      <h2 class="text-3xl font-bold text-center uppercase mb-16 tracking-tight">
        Company I Worked with
      </h2>
      <div
        class="slider"
        style="--width: 200px; --height: 100px; --quantity: 5"
      >
        <div class="list">
          <div class="item" style="--position: 1">
            <img src="@/assets/images/1.png" alt="Gates IT Solutions" />
          </div>
          <div class="item" style="--position: 2">
            <img src="@/assets/images/2.png" alt="career" />
          </div>
          <div class="item" style="--position: 4">
            <img src="@/assets/images/3.png" alt="career" />
          </div>
          <div class="item" style="--position: 3">
            <img src="@/assets/images/4.png" alt="career" />
          </div>
          <div class="item" style="--position: 5">
            <img src="@/assets/images/5.png" alt="career" />
          </div>
        </div>
      </div>
    </section>

    <!-- Projects Section -->
    <!-- <section id="projects" class="py-16" data-aos="fade-left">
      <img
        src="https://images.pexels.com/photos/27269560/pexels-photo-27269560/free-photo-of-marti.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
        class="absolute top-0 left-0 w-full h-full object-cover opacity-20"
      />
      <h2 class="text-3xl font-bold text-center">Projects</h2>
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 p-8">
        <div
          v-for="project in projects"
          :key="project.title"
          class="card bg-base-100 shadow"
        >
          <div class="card-body">
            <h3 class="card-title">{{ project.title }}</h3>
            <p>{{ project.description }}</p>
            <a :href="project.link" target="_blank" class="link link-primary"
              >View Project</a
            >
          </div>
        </div>
      </div>
    </section> -->

    <!-- Certificates Section -->
    <section
      id="certificates"
      class="py-16 bg-base-300 cert-bg"
      data-aos="zoom-in"
    >
      <h2 class="text-4xl font-bold text-center text-gray-800 mb-12">
        Certificates
      </h2>
      <div class="container mx-auto px-6 lg:px-12">
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          <div
            v-for="certificate in certificates"
            :key="certificate.code"
            class="flex flex-col items-center p-6 bg-white rounded-xl shadow-lg hover:shadow-xl transform hover:scale-105 transition-all duration-300"
          >
            <!-- Certificate Icon -->
            <div class="w-64 h-64 mb-2">
              <img
                :src="getIcon(certificate.code)"
                alt="Certificate Icon"
                class="w-full h-full object-contain"
              />
            </div>
            <!-- Certificate Name -->
            <h3 class="text-xl font-semibold text-gray-800">
              {{ certificate.name }}
            </h3>
            <!-- Certificate Provider -->
            <p class="text-sm text-gray-500 mt-1">
              Provided by:
              <span class="font-medium">{{ certificate.provider }}</span>
            </p>
            <!-- Certificate Year -->
            <p class="text-sm text-gray-400 mt-1">{{ certificate.year }}</p>
            <!-- Certificate Description -->
            <p class="mt-4 text-gray-600 text-sm leading-relaxed text-center">
              {{ certificate.description }}
            </p>
            <!-- View Certificate Button -->
            <a
              :href="certificate.image"
              target="_blank"
              class="mt-4 inline-block px-6 py-2 bg-emerald-500 text-white font-medium rounded-full hover:bg-emerald-600 transition-all"
            >
              View Certificate
            </a>
          </div>
        </div>
      </div>
    </section>

    <footer class="footer bg-neutral text-neutral-content items-center p-4">
      <aside class="grid-flow-col items-center">
        <p>Copyright © {{ new Date().getFullYear() }} - All right reserved</p>
      </aside>
      <nav class="grid-flow-col gap-4 md:place-self-center md:justify-self-end">
        <p>
          Built with
          <a
            href="https://nuxtjs.org/"
            class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300"
            target="_blank"
            rel="noreferrer noopener"
            aria-label="Next.js (opens in a new tab)"
            >Nuxt.js</a
          >
          and
          <a
            href="https://tailwindcss.com/"
            class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300"
            target="_blank"
            rel="noreferrer noopener"
            aria-label="Tailwind CSS (opens in a new tab)"
            >Tailwind CSS</a
          >. All text is set in the
          <a
            href="https://rsms.me/inter/"
            class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300"
            target="_blank"
            rel="noreferrer noopener"
            aria-label="Inter (opens in a new tab)"
            >Inter</a
          >
          typeface. Icon by
          <a
            href="https://icons8.com/"
            class="font-medium text-slate-400 hover:text-teal-300 focus-visible:text-teal-300"
            target="_blank"
            rel="noreferrer noopener"
            aria-label="Inter (opens in a new tab)"
            >Icons8</a
          >.
        </p>
      </nav>
    </footer>
  </div>
</template>

<script setup>
import { onMounted } from 'vue';
import AOS from 'aos';

onMounted(() => {
  AOS.init();
});

const skills = [
  {
    name: 'Frontend',
    icon: 'ri-code-s-slash-line',
    delay: 150,
    stack: [
      'Vue.js',
      'Angular',
      'Flutter',
      'Nuxt.js',
      'Bulma',
      'Tailwindcss',
      'DaisyUI',
      'Lighthouse',
    ],
  },
  {
    name: 'Backend',
    icon: 'ri-bug-line',
    delay: 450,
    stack: [
      'PHP',
      'Laravel',
      'Node.js',
      'Express',
      'Java',
      'Spring Boot',
      'Bun',
      'Jasmine',
      'MySQL',
    ],
  },
  {
    name: 'DevOps',
    icon: 'ri-git-branch-fill',
    delay: 650,
    stack: [
      'Git',
      'Docker',
      'Jenkins',
      'Ansible',
      'Kubernetes',
      'Prometheus',
      'Grafana',
    ],
  },
];

const projects = [
  { title: 'Project A', description: 'A web application for X.', link: '#' },
];

const certificates = [
  {
    name: 'Certified Kubernetes Administrator (CKA)',
    provider: 'Linux Foundation',
    code: 'CKA',
    year: 'Oct 2024',
    description:
      'The CKA certification demonstrates expertise in managing, deploying, and troubleshooting Kubernetes clusters.',
    image: 'https://example.com/cka-certificate-link', // Replace with actual link
  },
  {
    name: 'Certified Devops Practitioner',
    provider: 'CCSD Council',
    code: 'CCSD',
    year: 'Oct 2024',
    description:
      'The certification is designed to provide the core education necessary to put DevOps into practice. With the help of DevOps theory, pragmatic examples and exercises, and interactive group discussions, and how to implement it in real projects.',
    image: 'https://example.com/aws-certificate-link', // Replace with actual link
  },
  {
    name: 'Malaysian Skills Certificate (SKM - Application Development) - Level 2',
    provider: 'Ministry of Higher Education (MOHE)',
    code: 'MOHE',
    year: 'Oct 2016',
    description:
      'The Sijil Kemahiran Malaysia (SKM) validates skilled workers who are trained and qualified to enhance the competiveness of local industries in the global market.',
    image: 'https://example.com/aws-certificate-link', // Replace with actual link
  },
];

function getIcon(tool) {
  const iconMap = {
    'Vue.js': 'https://img.icons8.com/fluency/48/vuejs.png',
    Angular:
      'https://img.icons8.com/external-tal-revivo-color-tal-revivo/24/external-angular-a-typescript-based-open-source-web-application-framework-logo-color-tal-revivo.png',
    Flutter: 'https://img.icons8.com/color/48/flutter.png',
    'Nuxt.js': 'https://img.icons8.com/color/48/nuxt-jc.png',
    Bulma: 'https://img.icons8.com/color-glass/48/bulma-io.png',
    Tailwindcss: 'https://img.icons8.com/color/48/tailwindcss.png',
    DaisyUI:
      'https://img.icons8.com/external-smashingstocks-flat-smashing-stocks/66/external-Daisy-nature-smashingstocks-flat-smashing-stocks.png',
    Lighthouse: 'https://img.icons8.com/color/48/lighthouse--v1.png',
    PHP: 'https://img.icons8.com/external-those-icons-flat-those-icons/48/external-PHP-programming-and-development-those-icons-flat-those-icons.png',
    'Node.js': 'https://img.icons8.com/color/48/nodejs.png',
    Java: 'https://img.icons8.com/3d-fluency/94/java-coffee-cup-logo.png',
    Laravel: 'https://img.icons8.com/fluency/48/laravel.png',
    'Spring Boot': 'https://img.icons8.com/officel/80/spring-logo.png',
    Express: 'https://img.icons8.com/ios/50/express-js.png',
    Jasmine:
      'https://upload.wikimedia.org/wikipedia/en/thumb/2/22/Logo_jasmine.svg/1024px-Logo_jasmine.svg.png',
    MySQL:
      'https://img.icons8.com/external-those-icons-flat-those-icons/48/external-MySQL-programming-and-development-those-icons-flat-those-icons.png',
    Git: 'https://img.icons8.com/color/48/git.png',
    Docker: 'https://img.icons8.com/color/48/docker.png',
    Jenkins: 'https://img.icons8.com/color/48/jenkins.png',
    Ansible: 'https://img.icons8.com/color/48/ansible.png',
    Kubernetes: 'https://img.icons8.com/color/48/kubernetes.png',
    Prometheus: 'https://img.icons8.com/color/48/prometheus-app.png',
    Grafana: 'https://img.icons8.com/color/48/grafana.png',
    Bun: 'https://bun.sh/logo-square.png',
    CKA: 'https://logowik.com/content/uploads/images/the-linux-foundation4341.logowik.com.webp',
    CCSD: 'https://th.bing.com/th/id/OIP.CL3VW88NoEVUt4tL0ifhPwHaDL?rs=1&pid=ImgDetMain',
    MOHE: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Coat_of_arms_of_Malaysia.svg/1280px-Coat_of_arms_of_Malaysia.svg.png',
  };
  return iconMap[tool] || 'https://img.icons8.com/fluency/48/image--v1.png';
}
</script>

<style scoped>
.cert-bg {
  background-color: #ecfdf5;
  background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='4' height='4' viewBox='0 0 4 4'%3E%3Cpath fill='%236bb693' fill-opacity='0.36' d='M1 3h1v1H1V3zm2-2h1v1H3V1z'%3E%3C/path%3E%3C/svg%3E");
}
/* Wave animation */
.hero_wave {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  z-index: 0; /* Place wave behind content */
}

.waves {
  position: absolute;
  width: 100%;
  height: 15vh;
  min-height: 100px;
  max-height: 150px;
  bottom: 0;
  left: 0;
}

.parallax > use {
  animation: move-forever 25s cubic-bezier(0.55, 0.5, 0.45, 0.5) infinite;
}

.parallax > use:nth-child(1) {
  animation-delay: -2s;
  animation-duration: 7s;
}

.parallax > use:nth-child(2) {
  animation-delay: -3s;
  animation-duration: 10s;
}

.parallax > use:nth-child(3) {
  animation-delay: -4s;
  animation-duration: 13s;
}

.parallax > use:nth-child(4) {
  animation-delay: -5s;
  animation-duration: 20s;
}

@keyframes move-forever {
  0% {
    transform: translate3d(-90px, 0, 0);
  }
  100% {
    transform: translate3d(85px, 0, 0);
  }
}

/* Shrinking for mobile */
@media (max-width: 768px) {
  .waves {
    height: 40px;
    min-height: 40px;
  }
}

@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(10px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

section div > div {
  animation: fadeIn 0.6s ease-in-out;
}

.slider {
  width: 100%;
  height: var(--height);
  overflow: hidden;
  mask-image: linear-gradient(to right, transparent, #000 10% 90%, transparent);
}
.slider .list {
  display: flex;
  width: 100%;
  min-width: calc(var(--width) * var(--quantity));
  position: relative;
}
.slider .list .item {
  width: var(--width);
  height: var(--height);
  position: absolute;
  left: 100%;
  animation: autoRun 16s linear infinite;
  transition: filter 0.5s;
  animation-delay: calc(
    (16s / var(--quantity)) * (var(--position) - 1) - 16s
  ) !important;
}
.slider .list .item img {
  width: 100%;
}
@keyframes autoRun {
  from {
    left: 100%;
  }
  to {
    left: calc(var(--width) * -1);
  }
}
.slider:hover .item {
  animation-play-state: paused !important;
  filter: grayscale(1);
}
.slider .item:hover {
  filter: grayscale(0);
}
</style>
