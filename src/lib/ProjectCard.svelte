<script lang="ts">
	export let title: string;
	export let subtitle: string;
	export let description: string;
	export let tags: string[] = [];
</script>

<div
	class="group relative rounded-2xl border border-white/10 bg-[#111111] p-6 transition duration-300 hover:scale-[1.02] hover:border-[#ff0099]/40 hover:shadow-lg"
>
	<div
		class="absolute -top-1 -right-1 h-2 w-2 rounded-full bg-[#ff0099] blur-sm group-hover:animate-ping"
	></div>

	<h3
		class="bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-2xl font-extrabold text-transparent"
	>
		{title}
	</h3>
	<p class="mb-2 text-sm text-white/60 italic">{subtitle}</p>
	<p class="text-sm leading-relaxed text-white">{description}</p>

	<div class="mt-4 flex flex-wrap gap-2">
		{#each tags as tag}
			<span
				class="rounded-full border border-white/10 bg-white/5 px-3 py-1 text-xs text-white transition hover:bg-[#ff0099] hover:text-black"
			>
				{tag}
			</span>
		{/each}
	</div>
</div>
