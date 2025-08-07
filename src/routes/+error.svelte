<script>
	import { goto } from '$app/navigation';
</script>

<div class="flex min-h-screen flex-col items-center justify-center bg-[#0d0d0d] px-4 text-white">
	<h1 class="glitch relative text-7xl font-extrabold text-white sm:text-9xl">
		<span aria-hidden="true">404</span>
		404
		<span aria-hidden="false">404</span>
	</h1>
	<p class="text-secondary mt-4 text-xl sm:text-2xl">Uh oh. Looks like you're off the map.</p>
	<button
		on:click={() => goto('/')}
		class="mt-8 rounded-full bg-gradient-to-r from-[#1f8fff] to-[#00ff84] px-6 py-3 font-semibold text-black shadow-md transition duration-200 ease-in-out hover:-translate-y-1 hover:brightness-110"
	>
		Return Home
	</button>
</div>

<style>
	.glitch {
		position: relative;
		display: inline-block;
	}

	.glitch span {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		overflow: hidden;
		color: #00ff84;
	}

	.glitch span:nth-child(1) {
		animation: glitchTop 2s infinite linear alternate-reverse;
		color: #ff0099;
		z-index: -1;
	}

	.glitch span:nth-child(3) {
		animation: glitchBottom 2s infinite linear alternate-reverse;
		color: #1f8fff;
		z-index: -1;
	}

	@keyframes glitchTop {
		0% {
			clip-path: inset(0 0 80% 0);
			transform: translate(-2px, -2px);
		}
		20% {
			clip-path: inset(0 0 60% 0);
			transform: translate(2px, -1px);
		}
		40% {
			clip-path: inset(0 0 40% 0);
			transform: translate(-1px, 2px);
		}
		60% {
			clip-path: inset(0 0 20% 0);
			transform: translate(1px, -2px);
		}
		80% {
			clip-path: inset(0 0 10% 0);
			transform: translate(0px, 2px);
		}
		100% {
			clip-path: inset(0 0 0% 0);
			transform: translate(0);
		}
	}

	@keyframes glitchBottom {
		0% {
			clip-path: inset(80% 0 0 0);
			transform: translate(2px, 2px);
		}
		20% {
			clip-path: inset(60% 0 0 0);
			transform: translate(-2px, 1px);
		}
		40% {
			clip-path: inset(40% 0 0 0);
			transform: translate(1px, -2px);
		}
		60% {
			clip-path: inset(20% 0 0 0);
			transform: translate(-1px, 2px);
		}
		80% {
			clip-path: inset(10% 0 0 0);
			transform: translate(0px, -2px);
		}
		100% {
			clip-path: inset(0% 0 0 0);
			transform: translate(0);
		}
	}
</style>
