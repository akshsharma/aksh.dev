<script lang="ts">
  import ScrollReveal from '$lib/ScrollReveal.svelte';
</script>

<svelte:head>
	<title>Aksh Sharma | Full-Stack Engineer</title>
</svelte:head>

<!-- Hero Section -->
<ScrollReveal className="text-center pb-20 space-y-6">
  <section class="text-center pb-1 space-y-6 bg-background rounded-2xl shadow-inner px-4">
    <h1 class="text-5xl font-extrabold tracking-tight bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-transparent">
      Hi, I'm Aksh.
    </h1>
    <p class="text-lg text-secondary max-w-xl mx-auto">
      From operational planning to product roadmaps — I have built systems, led teams, and delivered results under pressure.
    </p>
    <div class="flex justify-center gap-4 pt-2 flex-wrap">
      <a
        href="/contact"
        class="px-6 py-3 rounded-full font-semibold bg-gradient-to-r from-[#1f8fff] to-[#00ff84] text-black shadow-md hover:brightness-110 hover:-translate-y-1 transform transition duration-200 ease-in-out"
      >
        Get in Touch
      </a>
      <a
        href="/blog"
        class="px-6 py-3 rounded-full font-semibold border border-white/10 bg-[#0d0d0d] text-white hover:shadow-md hover:brightness-110 hover:-translate-y-1 transform transition duration-200 ease-in-out"
      >
        Read My Blog
      </a>
    </div>
  </section>
</ScrollReveal>

<!-- Currently Building Section -->
<ScrollReveal>
  <section class="mt-1 text-center px-6 py-12 bg-[#121212] border border-white/10 rounded-2xl shadow">
    <h2 class="text-3xl font-bold mb-4 bg-gradient-to-r from-[#00ff84] to-[#1f8fff] bg-clip-text text-transparent">
      Currently Building
    </h2>
    <p class="text-base text-gray-300 max-w-2xl mx-auto">
      This portfolio is a work in progress — built with <span class="text-primary font-medium">SvelteKit</span>, 
      <span class="text-secondary font-medium">Supabase</span>, and a design-first mindset. Soon it will feature blog posts, and
      dynamic project pages.
    </p>
  </section>
</ScrollReveal>

<!-- How I Lead Projects Section -->
<ScrollReveal>
  <section class="mt-16 px-6 py-12 bg-[#111] text-center rounded-2xl border border-white/10 shadow-md">
    <h2 class="text-3xl font-bold mb-10 bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-transparent">
      How I Lead Projects
    </h2>

    <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 max-w-6xl mx-auto text-sm text-white mb-10">
      <!-- Strategic Planning -->
      <div class="bg-[#0d0d0d] border border-white/10 p-6 rounded-xl shadow hover:shadow-xl hover:ring-1 hover:ring-[#00ff84] transition">
        <h3 class="text-lg font-semibold mb-2 text-[#00ff84]">Strategic Planning</h3>
        <p>Aligning project outcomes with stakeholder vision, balancing scope, time, and risk from day one.</p>
      </div>

      <!-- Agile Execution -->
      <div class="bg-[#0d0d0d] border border-white/10 p-6 rounded-xl shadow hover:shadow-xl hover:ring-1 hover:ring-[#1f8fff] transition">
        <h3 class="text-lg font-semibold mb-2 text-[#1f8fff]">Agile Execution</h3>
        <p>Driving iterative progress with adaptive workflows, team accountability, and clear KPIs.</p>
      </div>

      <!-- Human-Centered Leadership -->
      <div class="bg-[#0d0d0d] border border-white/10 p-6 rounded-xl shadow hover:shadow-xl hover:ring-1 hover:ring-[#ff0099] transition">
        <h3 class="text-lg font-semibold mb-2 text-[#ff0099]">Human-Centered Leadership</h3>
        <p>Fostering cohesion, communication, and sustainability in high-performance teams.</p>
      </div>
    </div>

    <h3 class="text-xl font-bold text-accent mb-6">Project Management in Action</h3>

    <ul class="max-w-3xl mx-auto text-white space-y-6 text-left text-base px-2 leading-relaxed">
      <li>
        <span class="text-primary font-semibold">✓ Led a multinational artillery information system</span><br>
        Coordinated 400+ personnel across NATO forces with robust planning and information architecture.
      </li>
      <li>
        <span class="text-primary font-semibold">✓ Delivered $20,000+ in charitable fundraising in a 2-year span</span><br>
        Managed logistics, volunteer engagement, and stakeholder reporting for a national campaign.
      </li>
      <li>
        <span class="text-primary font-semibold">✓ Transitioning into full-stack PM with technical fluency</span><br>
        Bridging leadership and software development to guide secure, scalable products from idea to delivery.
      </li>
    </ul>
  </section>
</ScrollReveal>