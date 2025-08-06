<script lang="ts">
	let menuOpen = false;

	function toggleMenu() {
		menuOpen = !menuOpen;
	}
</script>

<nav class="w-full fixed top-0 left-0 z-50 bg-[#0d0d0d] shadow-md">
	<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
		<div class="flex items-center justify-between h-16">
			<!-- Logo / Site Name -->
			<a href="/" class="text-xl font-bold text-primary hover:text-accent transition duration-300">
				Aksh Sharma
			</a>

			<!-- Desktop Menu -->
			<div class="hidden sm:flex space-x-6 items-center text-white">
				<a href="/" class="nav-link hover:-translate-y-1 transform transition duration-200 ease-in-out">Home</a>
				<a href="/projects" class="nav-link hover:-translate-y-1 transform transition duration-200 ease-in-out">Projects</a>
				<a href="/about" class="nav-link hover:-translate-y-1 transform transition duration-200 ease-in-out">About</a>
				<a href="/contact" class="nav-link px-4 py-2 rounded-xl bg-[#00ff84] text-white hover:scale-105 hover:shadow-lg transition duration-300">
					Contact
				</a>
			</div>

			<!-- Mobile Menu Button -->
			<button class="sm:hidden focus:outline-none" on:click={toggleMenu} aria-label="Toggle Menu">
				<svg class="w-6 h-6 text-primary" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24">
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
	{#if menuOpen}
		<div class="sm:hidden px-4 pt-4 pb-6 space-y-4 bg-background border-t border-white/10 shadow-md animate-fade-in">
			<a href="/" class="nav-link block">Home</a>
			<a href="/projects" class="nav-link block">Projects</a>
			<a href="/about" class="nav-link block">About</a>
			<a href="/contact" class="nav-link block px-4 py-2 rounded-xl bg-accent text-[#0d0d0d] hover:scale-105 hover:shadow-lg transition duration-300">
				Contact
			</a>
		</div>
	{/if}
</nav>

<style>
	.nav-link {
		@apply text-[#fefefe]  transition duration-200 hover:scale-105 active:scale-95;
	}
	@keyframes fade-in {
		from { opacity: 0; transform: translateY(-5px); }
		to { opacity: 1; transform: translateY(0); }
	}
	.animate-fade-in {
		animation: fade-in 0.2s ease-out;
	}
</style>