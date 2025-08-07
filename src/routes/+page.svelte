<script lang="ts">
	import ScrollReveal from '$lib/ScrollReveal.svelte';
</script>

<svelte:head>
	<title>Aksh Sharma | Full-Stack Engineer</title>
</svelte:head>

<!-- Hero Section -->
<ScrollReveal className="pb-20 px-4">
	<section
		class="bg-background flex flex-col items-center justify-between gap-10 rounded-2xl px-6 py-8 text-center shadow-inner md:flex-row md:px-12 md:text-left"
	>
		<!-- Left side: text -->
		<div class="space-y-6 md:flex-1">
			<h1
				class="bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-5xl font-extrabold tracking-tight text-transparent"
			>
				Hi, I'm Aksh.
			</h1>

			<p class="text-secondary mx-auto max-w-xl text-lg md:mx-0">
				From operational planning to product roadmaps — I have built systems, led teams, and
				delivered results under pressure.
			</p>

			<div class="flex flex-wrap justify-center gap-4 pt-2 md:justify-start">
				<a
					href="/contact"
					class="transform rounded-full bg-gradient-to-r from-[#1f8fff] to-[#00ff84] px-6 py-3 font-semibold text-black shadow-md transition duration-200 ease-in-out hover:-translate-y-1 hover:brightness-110"
				>
					Get in Touch
				</a>
				<a
					href="/projects"
					class="transform rounded-full border border-white/10 bg-[#0d0d0d] px-6 py-3 font-semibold text-white transition duration-200 ease-in-out hover:-translate-y-1 hover:shadow-md hover:brightness-110"
				>
					Check Out My Work
				</a>
			</div>
		</div>

		<!-- Right side: photo -->
		<div class="flex justify-center md:flex-1">
			<img
				src="/src/lib/assets/portrait.jpeg"
				alt="Aksh Sharma"
				class="h-52 w-52 rounded-full border-4 object-cover shadow-[0_0_40px_#00ff84aa] md:h-64 md:w-64"
			/>
		</div>
	</section>
</ScrollReveal>

<!-- Currently Building Section -->
<ScrollReveal>
	<section
		class="mt-1 rounded-2xl border border-white/10 bg-[#121212] px-6 py-12 text-center shadow"
	>
		<h2
			class="mb-4 bg-gradient-to-r from-[#00ff84] to-[#1f8fff] bg-clip-text text-3xl font-bold text-transparent"
		>
			Currently Building
		</h2>
		<p class="mx-auto max-w-2xl text-base text-gray-300">
			This portfolio is a work in progress — built with <span class="text-primary font-medium"
				>SvelteKit</span
			>,
			<span class="text-secondary font-medium">Supabase</span>, and a design-first mindset. Soon it
			will feature blog posts, and dynamic project pages.
		</p>
	</section>
</ScrollReveal>

<!-- How I Lead Projects Section -->
<ScrollReveal>
	<section
		class="mt-16 rounded-2xl border border-white/10 bg-[#111] px-6 py-12 text-center shadow-md"
	>
		<h2
			class="mb-10 bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-3xl font-bold text-transparent"
		>
			How I Lead Projects
		</h2>

		<div class="mx-auto mb-10 grid max-w-6xl grid-cols-1 gap-6 text-sm text-white sm:grid-cols-3">
			<!-- Strategic Planning -->
			<div
				class="rounded-xl border border-white/10 bg-[#0d0d0d] p-6 shadow transition hover:shadow-xl hover:ring-1 hover:ring-[#00ff84]"
			>
				<h3 class="mb-2 text-lg font-semibold text-[#00ff84]">Strategic Planning</h3>
				<p>
					Aligning project outcomes with stakeholder vision, balancing scope, time, and risk from
					day one.
				</p>
			</div>

			<!-- Agile Execution -->
			<div
				class="rounded-xl border border-white/10 bg-[#0d0d0d] p-6 shadow transition hover:shadow-xl hover:ring-1 hover:ring-[#1f8fff]"
			>
				<h3 class="mb-2 text-lg font-semibold text-[#1f8fff]">Agile Execution</h3>
				<p>
					Driving iterative progress with adaptive workflows, team accountability, and clear KPIs.
				</p>
			</div>

			<!-- Human-Centered Leadership -->
			<div
				class="rounded-xl border border-white/10 bg-[#0d0d0d] p-6 shadow transition hover:shadow-xl hover:ring-1 hover:ring-[#ff0099]"
			>
				<h3 class="mb-2 text-lg font-semibold text-[#ff0099]">Human-Centered Leadership</h3>
				<p>Fostering cohesion, communication, and sustainability in high-performance teams.</p>
			</div>
		</div>

		<h3 class="text-accent mb-6 text-xl font-bold">Project Management in Action</h3>

		<ul class="mx-auto max-w-3xl space-y-6 px-2 text-left text-base leading-relaxed text-white">
			<li>
				<span class="text-primary font-semibold"
					>✓ Led a multinational artillery information system</span
				><br />
				Coordinated 400+ personnel across NATO forces with robust planning and information architecture.
			</li>
			<li>
				<span class="text-primary font-semibold"
					>✓ Delivered $20,000+ in charitable fundraising in a 2-year span</span
				><br />
				Managed logistics, volunteer engagement, and stakeholder reporting for a national campaign.
			</li>
			<li>
				<span class="text-primary font-semibold"
					>✓ Transitioning into full-stack PM with technical fluency</span
				><br />
				Bridging leadership and software development to guide secure, scalable products from idea to
				delivery.
			</li>
		</ul>
	</section>
</ScrollReveal>
