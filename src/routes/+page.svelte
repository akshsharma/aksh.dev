<script lang="ts">
  import ScrollReveal from '$lib/ScrollReveal.svelte';
</script>

<svelte:head>
	<title>Aksh Sharma | Full-Stack Engineer</title>
</svelte:head>

<!-- Hero Section -->
<ScrollReveal className="text-center pb-20 space-y-6 bg-background rounded-2xl shadow-inner">
<section class="text-center pb-1 space-y-6 bg-background rounded-2xl shadow-inner">
	<h1 class="text-5xl font-bold tracking-tight text-primary">
		Hi, I'm <span class="text-[#e5018a]">Aksh</span>.
	</h1>
	<p class="text-lg text-secondary max-w-xl mx-auto">
		From operational planning to product roadmaps — I have built systems, lead teams, and delivered results under pressure.
	</p>
	<div class="flex justify-center gap-4 pt-2">
		<a href="/contact" class="px-6 py-3 bg-accent text-black bg-[#1f8fff] rounded-full font-medium shadow-sm transition duration-200 hover:brightness-110 hover:shadow-glow"> Get in Touch</a>
		<a href="/blog" class="px-6 py-3 border border-black text-black rounded-full font-medium shadow-sm transition bg-[#00ff84] duration-200 hover:brightness-110 hover:text-black hover:shadow">Read My Blog</a>
	</div>
</section>
</ScrollReveal>

<!-- Highlight /  Section -->
<ScrollReveal>
<section class="mt-1 text-center px-6 py-12 bg-[#121212] border border-white/10 rounded-2xl shadow">
	<h2 class="text-3xl font-semibold text-accent mb-4">Currently Building</h2>
	<p class="text-base text-gray-300 max-w-2xl mx-auto">
		This portfolio is a work in progress — built with <span class="text-primary">SvelteKit</span>, 
		<span class="text-secondary">Supabase</span>, and a design-first mindset. Soon it will feature blog posts, 
		dynamic project pages, and an admin dashboard.
	</p>
</section>
</ScrollReveal>

<ScrollReveal>
<section class="mt-16 px-6 py-12 bg-[#111] text-center rounded-2xl border border-white/10 shadow-md">
  <h2 class="text-2xl font-semibold mb-6 text-primary">How I Lead Projects</h2>

  <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 max-w-5xl mx-auto text-sm text-white mb-10">
    <div class="bg-background border border-white/10 p-6 rounded-xl shadow text-secondary">
      <h3 class="text-lg font-semibold mb-2">Strategic Planning</h3>
      <p>Aligning project outcomes with stakeholder vision, balancing scope, time, and risk from day one.</p>
    </div>
    <div class="bg-background border border-white/10 p-6 rounded-xl shadow text-accent">
      <h3 class="text-lg font-semibold mb-2">Agile Execution</h3>
      <p>Driving iterative progress with adaptive workflows, team accountability, and clear KPIs.</p>
    </div>
    <div class="bg-background border border-white/10 p-6 rounded-xl shadow text-primary">
      <h3 class="text-lg font-semibold mb-2">Human-Centered Leadership</h3>
      <p>Fostering cohesion, communication, and sustainability in high-performance teams.</p>
    </div>
  </div>

  <h3 class="text-xl font-semibold text-accent mb-4">Project Management in Action</h3>

  <ul class="max-w-3xl mx-auto text-white space-y-4 text-left text-base px-2">
    <li>
      <span class="text-primary font-semibold">✓ Led a multinational artillery information system</span><br>
      Coordinated 400+ personnel across NATO forces with robust planning and information architecture.
    </li>
    <li>
      <span class="text-primary font-semibold">✓ Delivered $20,000+ in charitable fundraising in a 2 year span</span><br>
      Managed logistics, volunteer engagement, and stakeholder reporting for a national campaign.
    </li>
    <li>
      <span class="text-primary font-semibold">✓ Transitioning into full-stack PM with technical fluency</span><br>
      Bridging leadership and software development to guide secure, scalable products from idea to delivery.
    </li>
  </ul>
</section>
</ScrollReveal>