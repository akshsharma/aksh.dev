<script lang="ts">
  import ScrollReveal from '$lib/ScrollReveal.svelte';
  import Gantt from '$lib/Gantt.svelte';
</script>

<svelte:head>
  <title>About | Aksh Sharma</title>
</svelte:head>

<!-- Hero Section -->
<ScrollReveal className="text-center space-y-3 py-12 px-4">
  <h1 class="text-5xl font-extrabold bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-transparent">
    About Me
  </h1>
  <p class="text-secondary max-w-3xl mx-auto text-lg">
    I'm Aksh Sharma — a project leader, strategist, and builder. With a background in software engineering and years of leadership in the Canadian Armed Forces, I bring clarity, discipline, and direction to complex operations across sectors.
  </p>
</ScrollReveal>

<!-- Fireplan Section -->
<ScrollReveal className="mt-16 px-6 py-10 bg-[#111] rounded-2xl border border-white/10 shadow-md text-white">
  <h2 class="text-3xl font-bold mb-8 text-center bg-gradient-to-r from-[#00ff84] to-[#1f8fff] bg-clip-text text-transparent">What I've Been Up To</h2>

  <!-- Ident Line -->
  <div class="grid grid-cols-2 sm:grid-cols-2 text-center gap-4 text-sm mb-8 bg-[#0d0d0d] border border-white/10 p-4 rounded-xl">
    <div><span class="text-secondary font-semibold">Supporting:</span> My Goals</div>
    <div><span class="text-secondary font-semibold">Originator:</span> Aksh Sharma</div>
  </div>

  <!-- Target Info Table -->
  <div class="overflow-x-auto rounded-xl border border-white/10 shadow-inner">
    <table class="w-full text-sm text-left text-white">
      <thead class="bg-[#1f8fff]/80 text-black uppercase text-xs tracking-wide">
        <tr>
          <th class="p-4">Target Number</th>
          <th class="p-4">Target Name</th>
          <th class="p-4">Location</th>
          <th class="p-4">Notes</th>
        </tr>
      </thead>
      <tbody class="bg-[#0d0d0d]/80 divide-y divide-white/10">
        <!-- Rows — updated colors for readability -->
        {#each [
          ['CL2101', 'Basic Officer Training', 'Meaford, Ontario and Gagetown, New Brunswick', ''],
          ['CL2102', 'University of Guelph', 'Guelph, Ontario', 'BComp. Software Engineering'],
          ['CL2013', 'Troop Command', 'Guelph, Ontario', 'First Leadership Experience'],
          ['CL2014', 'Sub-Unit Operations Officer', 'Guelph, Ontario', 'Operational Management & Training'],
          ['CL2015', 'Information Knowledge Management Officer', 'Multinational Brigade - Latvia', 'NATO Deployment'],
          ['CL2016', 'Volunteer Lead', 'Southern Ontario', 'Stakeholder Management'],
          ['CL2017', 'Transition to Project Management', 'TBD', '']
        ] as [num, name, loc, note]}
          <tr>
            <td class="p-4">{num}</td>
            <td class="p-4">{name}</td>
            <td class="p-4">{loc}</td>
            <td class="p-4">{note}</td>
          </tr>
        {/each}
      </tbody>
    </table>
  </div>

  <!-- Scheduled Timings Chart -->
  <div class="mt-12 text-center">
    <Gantt />
  </div>

  <!-- Remarks -->
  <div class="mt-8 text-sm text-secondary leading-relaxed max-w-3xl mx-auto text-center">
    <strong class="text-white">Remarks:</strong><br>
    Each phase of this plan was carefully aligned to blend technical growth with real-world leadership. Whether coordinating volunteers or directing artillery, the focus was always on building clarity under pressure, adaptability in motion, and just the right amount of caffeine-fueled optimism.
  </div>
</ScrollReveal>

<!-- Core Values Section -->
<ScrollReveal className="mt-24 px-6 py-12 bg-[#111] text-center rounded-2xl border border-white/10 shadow-md">
  <h2 class="text-3xl font-bold mb-10 bg-gradient-to-r from-[#00ff84] to-[#ff0099] bg-clip-text text-transparent">
    What I Bring to Every Project
  </h2>

  <div class="grid grid-cols-1 sm:grid-cols-3 gap-6 max-w-6xl mx-auto text-sm">
    <!-- Mission Focus -->
    <div class="bg-[#0d0d0d] border border-white/10 p-6 rounded-xl shadow hover:shadow-xl hover:ring-1 hover:ring-[#00ff84] transition">
      <h3 class="text-lg font-semibold mb-3 text-[#00ff84]">Mission Focus</h3>
      <ul class="space-y-2 list-inside">
        <li>🚀 Ship what matters — not just what’s possible</li>
        <li>🧭 Align teams on priorities without drowning in meetings</li>
        <li>🎯 Keep the roadmap focused, flexible, and people-first</li>
      </ul>
    </div>

    <!-- Team Trust -->
    <div class="bg-[#0d0d0d] border border-white/10 p-6 rounded-xl shadow hover:shadow-xl hover:ring-1 hover:ring-[#1f8fff] transition">
      <h3 class="text-lg font-semibold mb-3 text-[#1f8fff]">Team Trust</h3>
      <ul class="space-y-2 list-inside">
        <li>🤝 Trust over tickets — lead with empathy, not ego</li>
        <li>🧩 Unblock, support, and actually listen</li>
        <li>☕ Standups matter — especially the ones with coffee</li>
      </ul>
    </div>

    <!-- Strategic Clarity -->
    <div class="bg-[#0d0d0d] border border-white/10 p-6 rounded-xl shadow hover:shadow-xl hover:ring-1 hover:ring-[#ff0099] transition">
      <h3 class="text-lg font-semibold mb-3 text-[#ff0099]">Strategic Clarity</h3>
      <ul class="space-y-2 list-inside">
        <li>📣 Communicate with purpose — up, down, and sideways</li>
        <li>🧠 Briefing execs or syncing with peers — clarity wins</li>
        <li>📌 Every decision tied to the mission and the message</li>
      </ul>
    </div>
  </div>
</ScrollReveal>

<!-- CTA Section -->
<ScrollReveal className="mt-24 mb-16 text-center space-y-6">
  <h2 class="text-3xl font-semibold bg-gradient-to-r from-[#ff0099] to-[#1f8fff] bg-clip-text text-transparent">
    Let’s build something that matters.
  </h2>
  <a
    href="/contact"
    class="inline-block px-8 py-4 bg-gradient-to-r from-[#ff0099] to-[#1f8fff] text-black font-semibold rounded-full shadow-md hover:brightness-110 hover:shadow-lg transition hover:-translate-y-1 transform duration-200 ease-in-out"
     
  >
    Get in Touch
  </a>
</ScrollReveal>