<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';
	import '../app.css'

	let darkMode = true;

	onMount(() => {
		const saved = localStorage.getItem('theme');
		darkMode = saved ? saved === 'dark' : true;
		updateTheme();
	});

	function toggleTheme() {
		darkMode = !darkMode;
		localStorage.setItem('theme', darkMode ? 'dark' : 'light');
		updateTheme();
	}

	function updateTheme() {
		if (darkMode) {
			document.documentElement.classList.add('dark');
		} else {
			document.documentElement.classList.remove('dark');
		}
	}
	
</script>

<!-- <style>
  .nav-link {
    @apply relative transition-all duration-200 hover:text-accent;
  }

  .nav-link:hover {
    transform: translateY(-2px) scale(1.03);
  }
</style> -->

<div class="min-h-screen bg-background text-text font-sans transition-colors duration-300">
	<nav class="fixed top-0 left-0 right-0 z-50 flex items-center justify-between px-6 py-4 bg-[#0d0d0d] border-b border-white/10 backdrop-blur">
  <!-- Logo -->
  <a href="/" class="text-xl font-bold text-primary hover:text-accent transition duration-200">
    Aksh Sharma
  </a>

  <!-- Navigation Links -->
  <div class="flex items-center gap-6 text-sm font-medium text-white">
    <a class="transition-all duration-200 text-white hover:text-accent transform hover:-translate-y-0.5 hover:scale-105 nav-link" href="/" >Home</a>
    <a class="nav-link transition-all duration-200 text-white hover:text-accent transform hover:-translate-y-0.5 hover:scale-105" href="/about" >About</a>
    <a class="nav-link transition-all duration-200 text-white hover:text-accent transform hover:-translate-y-0.5 hover:scale-105" href="/blog" >Blog</a>
    <a class="nav-link transition-all duration-200 text-white hover:text-accent transform hover:-translate-y-0.5 hover:scale-105" href="/contact" >Contact</a>
  </div>
</nav>

	<main class="pt-24 px-6 max-w-6xl mx-auto">
		<slot />
	</main>

	<!-- Footer -->
	<footer class="mt-20 px-6 py-10 text-center text-sm text-neutral-500">
		<div>© {new Date().getFullYear()} Aksh Sharma. Built with SvelteKit.</div>
		<div class="mt-2 flex justify-center gap-4">
			<a href="https://github.com/akshsharma" target="_blank" class="hover:text-white">GitHub</a>
			<a href="https://linkedin.com/in/aksh-sharma-a47466b8/" target="_blank" class="hover:text-white">LinkedIn</a>
			<a href="mailto:aksh.ad@outlook.com" class="hover:text-white">Email</a>
		</div>
	</footer>
</div>