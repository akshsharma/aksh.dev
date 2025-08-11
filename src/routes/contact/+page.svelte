<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';
	import { invalidate } from '$app/navigation';
	import { Mail, Linkedin, Github } from 'lucide-svelte';

	let name = '';
	let email = '';
	let subject = '';
	let message = '';
	let honeypot = '';
	let submitting = false;
	let success: string | null = null;
	let error: string | null = null;

	const validateEmail = (email: string) => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);

	const handleSubmit = async () => {
		if (!name || !email || !message) {
			error = 'Please fill out all required fields.';
			success = null;
			return;
		}
		if (!validateEmail(email)) {
			error = 'Please enter a valid email address.';
			success = null;
			return;
		}
		if (honeypot) {
			// silently fail to block spam bots
			return;
		}

		submitting = true;
		error = null;
		success = null;

		const res = await fetch('/contact', {
			method: 'POST',
			headers: { 'Content-Type': 'application/json' },
			body: JSON.stringify({ name, email, subject, message })
		});

		submitting = false;

		if (res.ok) {
			success = 'Message sent successfully!';
			name = email = subject = message = '';
		} else {
			error = 'Something went wrong. Please try again.';
		}
	};
</script>

<svelte:head>
	<title>Contact Me</title>
</svelte:head>

<section class="flex min-h-screen items-center justify-center bg-[#0d0d0d] px-4 py-20 text-white">
	<div class="w-full max-w-2xl space-y-8">
		<h1
			class="bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-center text-5xl font-extrabold text-transparent"
		>
			Let's Connect!
		</h1>

		<p class="text-secondary text-center text-lg">
			Got a question, idea, or opportunity? Fire away.
		</p>

		<form on:submit|preventDefault={handleSubmit} class="space-y-6">
			<!-- Anti-spam -->
			<input type="text" bind:value={honeypot} class="hidden" autocomplete="off" />

			<div class="grid grid-cols-1 gap-4 sm:grid-cols-2">
				<input
					type="text"
					placeholder="Your Name *"
					bind:value={name}
					class="w-full rounded-xl border border-white/10 bg-black p-3 transition focus:ring-2 focus:ring-[#00ff84] focus:outline-none"
				/>
				<input
					type="email"
					placeholder="Your Email *"
					bind:value={email}
					class="w-full rounded-xl border border-white/10 bg-black p-3 transition focus:ring-2 focus:ring-[#1f8fff] focus:outline-none"
				/>
			</div>

			<input
				type="text"
				placeholder="Subject (optional)"
				bind:value={subject}
				class="w-full rounded-xl border border-white/10 bg-black p-3 transition focus:ring-2 focus:ring-[#ff0099] focus:outline-none"
			/>

			<textarea
				placeholder="Your Message *"
				bind:value={message}
				class="h-40 w-full resize-none rounded-xl border border-white/10 bg-black p-3 transition focus:ring-2 focus:ring-[#00ff84] focus:outline-none"
			></textarea>

			<button
				type="submit"
				class="w-full transform rounded-xl bg-gradient-to-r from-[#ff0099] to-[#1f8fff] px-6 py-3 font-bold text-black shadow-md transition duration-200 ease-in-out hover:-translate-y-1 hover:shadow-lg hover:brightness-125 disabled:cursor-not-allowed disabled:opacity-50"
				disabled={submitting}
			>
				{#if submitting}
					<span class="animate-pulse">Sending...</span>
				{:else}
					Send Message
				{/if}
			</button>

			{#if success}
				<p class="text-center font-medium text-[#00ff84]">{success}</p>
			{:else if error}
				<p class="text-center font-medium text-[#ff0099]">{error}</p>
			{/if}
			<div class="mt-10 flex flex-col items-center justify-center gap-4 text-sm sm:flex-row">
				<a
					href="mailto:aksh.ad@outlook.com"
					class="group inline-flex transform items-center gap-2 rounded-xl border border-white/10 bg-black px-5 py-3 transition duration-200 ease-in-out hover:-translate-y-1 hover:bg-[#0d0d0d] hover:text-[#00ff84] hover:shadow-lg"
				>
					<Mail class="h-5 w-5 text-[#00ff84] group-hover:animate-pulse" />
					<span>Send me an Email</span>
				</a>

				<a
					href="https://www.linkedin.com/in/aksh-sharma-a47466b8/"
					target="_blank"
					rel="noopener noreferrer"
					class="group inline-flex transform items-center gap-2 rounded-xl border border-white/10 bg-black px-5 py-3 transition duration-200 ease-in-out hover:-translate-y-1 hover:bg-[#0d0d0d] hover:text-[#1f8fff] hover:shadow-lg"
				>
					<Linkedin class="h-5 w-5 text-[#1f8fff] group-hover:animate-pulse" />
					<span>Connect on LinkedIn</span>
				</a>
				<a
					class="group inline-flex transform items-center gap-2 rounded-xl border border-white/10 bg-black px-5 py-3 transition duration-200 ease-in-out hover:-translate-y-1 hover:bg-[#0d0d0d] hover:text-[#ff0099] hover:shadow-lg"
					href="https://github.com/akshsharma/"
					target="_blank"
					rel="noopener noreferrer"
				>
					<Github class="h-5 w-5 text-[#ff0099] group-hover:animate-pulse" />
					<span>Check out my GitHub</span>
				</a>
			</div>
		</form>
	</div>
</section>
