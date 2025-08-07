<script lang="ts">
	let menuOpen = false;
	let showMenu = false;

	function toggleMenu() {
		if (menuOpen) {
			// trigger fade-out
			menuOpen = false;
			setTimeout(() => {
				showMenu = false;
			}, 400); // match this to the animation duration (in ms)
		} else {
			showMenu = true;
			// trigger fade-in
			setTimeout(() => {
				menuOpen = true;
			}, 1); // slight delay to trigger transition
		}
	}
</script>

<nav class="fixed top-0 left-0 z-50 w-full bg-[#0d0d0d] shadow-md">
	<div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
		<div class="flex h-16 items-center justify-between">
			<!-- Logo / Site Name -->
			<a href="/" class="text-primary hover:text-accent text-xl font-bold transition duration-300">
				Aksh Sharma
			</a>

			<!-- Desktop Menu -->
			<div class="hidden items-center space-x-6 text-white sm:flex">
				<a
					href="/"
					class="nav-link transform transition duration-200 ease-in-out hover:-translate-y-1"
					>Home</a
				>
				<a
					href="/projects"
					class="nav-link transform transition duration-200 ease-in-out hover:-translate-y-1"
					>Projects</a
				>
				<a
					href="/about"
					class="nav-link transform transition duration-200 ease-in-out hover:-translate-y-1"
					>About</a
				>
				<a
					href="/contact"
					class="nav-link rounded-xl bg-[#00ff84] px-4 py-2 text-white transition duration-300 hover:scale-105 hover:shadow-lg"
				>
					Contact
				</a>
			</div>

			<!-- Mobile Menu Button -->
			<button class="focus:outline-none sm:hidden" on:click={toggleMenu} aria-label="Toggle Menu">
				<svg
					class="text-primary h-6 w-6"
					fill="none"
					stroke="currentColor"
					stroke-width="2"
					viewBox="0 0 24 24"
				>
					{#if !menuOpen}
						<path stroke-linecap="round" stroke-linejoin="round" d="M4 6h16M4 12h16M4 18h16" />
					{:else}
						<path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
					{/if}
				</svg>
			</button>
		</div>
	</div>

	<!-- Mobile Menu Dropdown -->
	{#if showMenu}
		<div
			class="bg-background space-y-4 border-t border-white/10 px-4 pt-4 pb-6 shadow-md transition-opacity duration-400 ease-out sm:hidden"
			class:animate-fade-in={menuOpen}
			class:animate-fade-out={!menuOpen}
		>
			<a href="/" class="nav-link block" on:click={toggleMenu}>Home</a>
			<a href="/projects" class="nav-link block" on:click={toggleMenu}>Projects</a>
			<a href="/about" class="nav-link block" on:click={toggleMenu}>About</a>
			<a
				href="/contact"
				class="nav-link bg-accent block rounded-xl px-4 py-2 text-[#0d0d0d] transition duration-300 hover:scale-105 hover:shadow-lg"
				on:click={toggleMenu}
			>
				Contact
			</a>
		</div>
	{/if}
</nav>

<style>
	.nav-link {
		@apply text-[#fefefe] transition duration-200 hover:scale-105 active:scale-95;
	}
	@keyframes fade-in {
		from {
			opacity: 0;
			transform: translateY(-5px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}
	.animate-fade-in {
		animation: fade-in 0.2s ease-out;
	}
</style>
