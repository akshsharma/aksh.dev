<script lang="ts">
	import { onMount } from 'svelte';
	import { page } from '$app/stores';
	import { invalidate } from '$app/navigation';
    import { Mail, Linkedin, Github} from 'lucide-svelte';


	let name = '';
	let email = '';
	let subject = '';
	let message = '';
	let honeypot = '';
	let submitting = false;
	let success: string | null = null;
	let error: string | null = null;

	const validateEmail = (email: string) =>
		/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);

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

<section class="min-h-screen flex items-center justify-center px-4 py-20 bg-[#0d0d0d] text-white">
	<div class="w-full max-w-2xl space-y-8">
		<h1 class="text-5xl font-extrabold text-center bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-transparent">
			Let's Connect!
		</h1>

		<p class="text-secondary text-center text-lg">
			Got a question, idea, or opportunity? Fire away.
		</p>

		<form on:submit|preventDefault={handleSubmit} class="space-y-6">
			<!-- Anti-spam -->
			<input type="text" bind:value={honeypot} class="hidden" autocomplete="off" />

			<div class="grid grid-cols-1 sm:grid-cols-2 gap-4">
				<input
					type="text"
					placeholder="Your Name *"
					bind:value={name}
					class="w-full p-3 rounded-xl bg-black border border-white/10 focus:outline-none focus:ring-2 focus:ring-[#00ff84] transition"
				/>
				<input
					type="email"
					placeholder="Your Email *"
					bind:value={email}
					class="w-full p-3 rounded-xl bg-black border border-white/10 focus:outline-none focus:ring-2 focus:ring-[#1f8fff] transition"
				/>
			</div>

			<input
				type="text"
				placeholder="Subject (optional)"
				bind:value={subject}
				class="w-full p-3 rounded-xl bg-black border border-white/10 focus:outline-none focus:ring-2 focus:ring-[#ff0099] transition"
			/>

			<textarea
				placeholder="Your Message *"
				bind:value={message}
				class="w-full h-40 p-3 rounded-xl bg-black border border-white/10 focus:outline-none focus:ring-2 focus:ring-[#00ff84] resize-none transition"
			></textarea>

			<button
				type="submit"
				class="w-full py-3 px-6 rounded-xl bg-gradient-to-r from-[#ff0099] to-[#1f8fff] text-black font-bold shadow-md hover:brightness-125 hover:shadow-lg transition disabled:opacity-50 disabled:cursor-not-allowed hover:-translate-y-1 transform duration-200 ease-in-out"
				disabled={submitting}
			>
				{#if submitting}
					<span class="animate-pulse">Sending...</span>
				{:else}
					 Send Message
				{/if}
			</button>

			{#if success}
				<p class="text-[#00ff84] text-center font-medium">{success}</p>
			{:else if error}
				<p class="text-[#ff0099] text-center font-medium">{error}</p>
			{/if}
            <div class="mt-10 flex flex-col sm:flex-row items-center justify-center gap-4 text-sm">
	<a
		href="mailto:aksh.ad@outlook.com"
		class="group inline-flex items-center gap-2 px-5 py-3 rounded-xl border border-white/10 bg-black hover:bg-[#0d0d0d] transition hover:shadow-lg hover:text-[#00ff84] hover:-translate-y-1 transform  duration-200 ease-in-out"
	>
		<Mail class="w-5 h-5 text-[#00ff84] group-hover:animate-pulse" />
		<span>Send me an Email</span>
	</a>

	<a
		href="https://www.linkedin.com/in/yourlinkedin/"
		target="_blank"
		rel="noopener noreferrer"
		class="group inline-flex items-center gap-2 px-5 py-3 rounded-xl border border-white/10 bg-black hover:bg-[#0d0d0d] transition hover:shadow-lg hover:text-[#1f8fff] hover:-translate-y-1 transform duration-200 ease-in-out"
	>
		<Linkedin class="w-5 h-5 text-[#1f8fff] group-hover:animate-pulse" />
		<span>Connect on LinkedIn</span>
	</a>
    <a class="group inline-flex items-center gap-2 px-5 py-3 rounded-xl border border-white/10 bg-black hover:bg-[#0d0d0d] transition hover:shadow-lg hover:text-[#ff0099] hover:-translate-y-1 transform  duration-200 ease-in-out" href="https://github.com/akshsharma/" target="_blank" rel="noopener noreferrer">
        <Github class="w-5 h-5 text-[#ff0099] group-hover:animate-pulse" />
        <span>Check out my GitHub</span>
    </a>
</div>
		</form>
	</div>
</section>