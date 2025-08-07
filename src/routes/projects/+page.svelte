<script lang="ts">
	import ProjectCard from '$lib/ProjectCard.svelte';
	import ScrollReveal from '$lib/ScrollReveal.svelte';

	const gridItems = [
		{
			title: 'Veterans Week 2022-2024 – City of Guelph',
			subtitle: 'Student Lead | University of Guelph - Serving Scholars Program',
			description:
				'Organized and coordinated all Veterans Week events at the University of Guelph, fostering cooperation between the University and 11th Field Regiment, Royal Canadian Artillery.',
			tags: ['Leadership', 'Cross-Organization Coordination', 'Event Planning', 'Public Speaking']
		},
		{
			title: 'Operational Planning & Staff Coordination',
			subtitle: 'Battery Commander’s Staff | Canadian Army',
			description:
				'Helped develop and implement clear training plans, syncing timelines and operations across training, recruiting, and promoting a healthy work environment.',
			tags: ['Operations', 'Planning', 'Cross-functional']
		},
		{
			title: 'Knowledge Management Restructure',
			subtitle: 'Internal Digital Systems | NATO Multinational Brigade - Latvia',
			description:
				'Redesigned how operational information was shared and stored across teams. Simplified systems for faster access and clarity, ensuring commanders had the information they needed to make sound decisions.',
			tags: ['Information Design', 'SharePoint', 'Efficiency']
		},
		{
			title: 'Volunteer Leadership – Cancer Warrior Canada',
			subtitle: 'Volunteer Coordinator | National Non-Profit',
			description:
				'Led a team of student and community volunteers across Ontario, helping raise over $20,000 across two years. Coordinated logistics, marketing, and outreach for annual fundraising galas attended by 300–400 guests each year.',
			tags: ['Leadership', 'Fundraising', 'Event Planning', 'Community Impact']
		},
		{
			title: 'Serving Scholars Program Expansion',
			subtitle: 'Military-Academic Support | University of Guelph',
			description:
				'Helped expand and promote the Serving Scholars program, which supports students in the Canadian Armed Forces. Led outreach and marketing efforts to grow awareness at universities across Ontario and advocate for better support systems for student-soldiers.',
			tags: ['Outreach', 'Program Development', 'Marketing', 'Military Education']
		}
	];
</script>

<section class="mx-auto max-w-7xl space-y-24 px-6 py-24">
	<!-- Featured Project -->
	<ScrollReveal className="items-center gap-10">
		<div class="space-y-4 text-center">
			<p class="text-accent text-sm font-bold tracking-widest uppercase">Featured Project</p>
			<h2
				class="bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-4xl font-extrabold text-transparent sm:text-6xl"
			>
				Leading Information Management in NATO
			</h2>
		</div>
		<div
			class="relative w-full rounded-3xl border border-white/10 bg-gradient-to-r from-[#1f8fff]/10 to-[#00ff84]/10 p-2 shadow-xl transition hover:shadow-2xl sm:p-12"
		>
			<!-- prettier-ignore -->
			<p class="text-base text-white/80 sm:text-lg break-words w-full leading-relaxed">
				Oversaw IM for a 400-person multinational artillery battalion group, building resilient planning systems and ensuring operational clarity under high-stress, real-time constraints. Led coordination between Canadian, Latvian, and Spanish units during live-fire exercises.
			</p>
			<div class="mt-6 flex flex-wrap gap-3">
				<span
					class="rounded-full border border-white/10 bg-[#00ff84]/10 px-4 py-1 text-sm text-white"
					>Leadership</span
				>
				<span
					class="rounded-full border border-white/10 bg-[#1f8fff]/10 px-4 py-1 text-sm text-white"
					>Information Systems</span
				>
				<span
					class="rounded-full border border-white/10 bg-[#ff0099]/10 px-4 py-1 text-sm text-white"
					>Multinational Cooperation</span
				>
			</div>
		</div>
	</ScrollReveal>

	<!-- Zig-zag 1 -->
	<ScrollReveal className="grid items-center gap-10 sm:grid-cols-2">
		<div>
			<h3 class="text-primary mb-2 text-3xl font-bold">Veterans Week Campaign</h3>
			<p class="text-sm text-white/80 sm:text-base">
				Coordinated volunteers, speakers, and partners across Ontario. Helped plan and oversee the
				100-year anniversary of War Memorial Hall at the University of Guelph.
			</p>
		</div>
		<ProjectCard {...gridItems[0]} />
	</ScrollReveal>

	<!-- Zig-zag 2 -->
	<ScrollReveal className="grid items-center gap-10 sm:grid-cols-2">
		<ProjectCard {...gridItems[1]} />
		<div>
			<h3 class="text-primary mb-2 text-3xl font-bold">Coordinating Fire Support and Training</h3>
			<p class="text-sm text-white/80 sm:text-base">
				Contributed to operations planning as a junior staff officer, directly supporting battery
				and brigade operations with precision timelines and structured outputs.
			</p>
		</div>
	</ScrollReveal>
	<!-- <ScrollReveal class="grid items-center gap-10 sm:grid-cols-2">
		<div
			class="border-accent mx-auto my-12 max-w-3xl border-l-4 py-4 pl-6 text-lg text-white/80 italic"
		>
			“Aksh isn’t just a planner — he’s an enabler. His systems made our teams faster, sharper, and
			more resilient under pressure.”
			<div class="text-secondary mt-2 text-sm">— Commander, NATO Battle Group</div>
		</div>
	</ScrollReveal> -->

	<ScrollReveal class="grid items-center gap-10 sm:grid-cols-2">
		<div>
			<h3 class="text-primary mb-2 text-3xl font-bold">Featured Research</h3>

			<div
				class="relative rounded-2xl border border-white/10 bg-[#111111] p-6 shadow-lg transition hover:shadow-2xl"
			>
				<div class="bg-accent absolute -top-1 -right-1 h-2 w-2 rounded-full blur-sm"></div>
				<div class="text-accent mb-3 text-sm font-bold tracking-widest uppercase">Co-Author</div>
				<h4
					class="bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-2xl font-extrabold text-transparent"
				>
					Exploring the Differences in Human and Automated Test Generation
				</h4>
				<p class="mt-3 text-sm text-white/70">
					University of Guelph — Comparative analysis of KLEE vs. human-generated tests on Blender
					across efficiency, effectiveness, and coverage.
				</p>
				<div class="mt-5 grid grid-cols-2 gap-3 text-xs text-white/70">
					<div class="rounded-xl border border-white/10 bg-white/5 p-3">
						<div class="font-semibold text-white">Focus</div>
						<div>Coverage, Edge Cases</div>
					</div>
					<div class="rounded-xl border border-white/10 bg-white/5 p-3">
						<div class="font-semibold text-white">Methods</div>
						<div>KLEE, llvm-cov</div>
					</div>
					<div class="rounded-xl border border-white/10 bg-white/5 p-3">
						<div class="font-semibold text-white">Domain</div>
						<div>Blender OSS</div>
					</div>
					<div class="rounded-xl border border-white/10 bg-white/5 p-3">
						<div class="font-semibold text-white">Takeaway</div>
						<div>Hybrid Wins</div>
					</div>
				</div>
				<a
					href="/src/lib/assets/Exploring_the_Differences_in_Human_and_Automated_Test_Generation.pdf"
					target="_blank"
					rel="noopener"
					class="mt-6 inline-block rounded-xl border border-white/10 bg-[#00ff84]/10 px-4 py-2 text-sm font-semibold text-white transition hover:bg-[#00ff84]/20"
				>
					Download PDF
				</a>
			</div>
		</div></ScrollReveal
	>

	<!-- Testimonial -->

	<!-- Section Divider -->
	<div class="mt-10 mb-2 text-center">
		<h2
			class="from-primary to-accent bg-gradient-to-r bg-clip-text text-2xl font-bold text-transparent text-white sm:text-4xl"
		>
			Other Notable Contributions
		</h2>
		<p class="text-secondary mt-2 text-sm sm:text-base">
			Operational excellence, people-first leadership, and tech where it matters.
		</p>
	</div>

	<!-- Mini Cards -->
	<div class="grid gap-10 sm:grid-cols-2 lg:grid-cols-3">
		{#each gridItems.slice(2) as item, index}
			<ScrollReveal delay={index * 100}>
				<ProjectCard {...item} />
			</ScrollReveal>
		{/each}
	</div>
</section>
