<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';
	import NavBar from '$lib/NavBar.svelte';
	import '../app.css';

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

<svelte:head>
	<link rel="icon" href="/favicon.png" type="image/png" />
</svelte:head>

<div class="bg-background text-text min-h-screen font-sans transition-colors duration-300">
	<NavBar></NavBar>

	<main class="mx-auto max-w-6xl px-6 pt-24">
		<slot />
	</main>

	<!-- Footer -->
	<footer class="mt-20 px-6 py-10 text-center text-sm text-neutral-500">
		<div>© {new Date().getFullYear()} Aksh Sharma. Built with SvelteKit.</div>
		<div class="mt-2 flex justify-center gap-4">
			<a href="https://github.com/akshsharma" target="_blank" class="hover:text-white">GitHub</a>
			<a
				href="https://linkedin.com/in/aksh-sharma-a47466b8/"
				target="_blank"
				class="hover:text-white">LinkedIn</a
			>
			<a href="mailto:aksh.ad@outlook.com" class="hover:text-white">Email</a>
		</div>
	</footer>
</div>
