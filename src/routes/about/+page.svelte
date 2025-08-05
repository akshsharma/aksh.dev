<script lang="ts">
  import ScrollReveal from '$lib/ScrollReveal.svelte';
  import Gantt from '$lib/Gantt.svelte';
</script>

<svelte:head>
  <title>About | Aksh Sharma</title>
</svelte:head>

<!-- Hero Section -->
<ScrollReveal className="text-center space-y-1 py-2">
  <h1 class="text-4xl font-bold text-primary">About Me</h1>
  <p class="text-secondary max-w-xl mx-auto">
    I'm Aksh Sharma — a project leader, strategist, and builder. With a background in software engineering and
    years of leadership in the Canadian Armed Forces, I bring clarity, discipline, and direction to complex
    operations across sectors.
  </p>
</ScrollReveal>

<!-- Fireplan Section -->
<ScrollReveal className="mt-16 px-6 py-2 bg-[#111] rounded-2xl border border-white/10 shadow-md text-white">
  <h2 class="text-2xl font-semibold mb-6 text-accent text-center">Fireplan: Career Trajectory</h2>
  <!-- Ident Line -->
  <div class="grid grid-cols-2 sm:grid-cols-3 gap-4 text-sm mb-8 border-solid border-2 rounded-2xl p-2">
    <div><span class="text-secondary">Fireplan:</span> Op SHARMA</div>
    <div><span class="text-secondary">Supporting:</span> My Goals</div>
    <div><span class="text-secondary">Originator:</span> Aksh Sharma</div>
  </div>

<!-- Target Info Table -->
<div class="relative flex flex-col w-full h-full text-l overflow-auto text-white bg-[#0d0d0d] shadow-md rounded-xl bg-clip-border">
  <table class="w-full text-left table-auto min-w-max">
    <thead>
      <tr>
        <th class="p-4 border-b border-blue-gray-100 bg-[#1f8fff]">
          <p class="block font-sans text-white antialiased font-bold leading-none text-blue-gray-900 opacity-70">
            Target Number
          </p>
        </th>
        <th class="p-4 border-b border-blue-gray-100 bg-[#1f8fff]">
          <p class="block font-sans antialiased font-bold leading-none text-blue-gray-900 opacity-70">
            Target Name
          </p>
        </th>
        <th class="p-4 border-b border-blue-gray-100 bg-[#1f8fff]">
          <p class="block font-sans font-bold antialiased leading-none text-blue-gray-900 opacity-70">
            Location
          </p>
        </th>
        <th class="p-4 border-b border-blue-gray-100 bg-[#1f8fff]">
          <p class="block font-sans text-sm antialiased font-bold leading-none text-blue-gray-900 opacity-70">Notes</p>
        </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2101
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Basic Officer Training
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Meaford, Ontario and Gagetown, New Brunswick
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900"></p>
        </td>
      </tr>
      <tr>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2102
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            University of Guelph
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Guelph Ontario
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            BComp. Software Engineering
          </p>
        </td>
      </tr>
      <tr>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2013
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Troop Command
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Guelph, Ontario
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            First Leadership Experience
          </p>
        </td>
      </tr>
      <tr>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2014
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Sub-Unit Operations Officer
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Guelph, Ontario
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Operational Management <br> and Training
          </p>
        </td>
      </tr>
      <tr>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2015
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Information Knowledge Management Officer
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Multinational Brigade - Latvia
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            NATO Deployment
          </p>
        </td>
      </tr>
      <tr>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2016
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Volunteer Lead
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Southern Ontario
          </p>
        </td>
        <td class="p-4 border-b border-blue-gray-50">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Stakeholder management
          </p>
        </td>
      </tr>
      <tr>
        <td class="p-4">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            CL2017
          </p>
        </td>
        <td class="p-4">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            Transition to Project Management
          </p>
        </td>
        <td class="p-4">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            TBD
          </p>
        </td>
        <td class="p-4">
          <p class="block font-sans text-sm antialiased font-normal leading-normal text-blue-gray-900">
            
          </p>
        </td>
      </tr>
    </tbody>
  </table>
</div>
  <!-- Scheduled Timings Chart -->
<div class="mt-12 text-center">
    <Gantt></Gantt>
</div>
  <!-- Remarks -->
  <div class="mt-6 text-sm text-secondary">
    <strong>Remarks:</strong> 
    <br>Each phase of this plan was carefully aligned to blend technical growth with real-world leadership. Whether coordinating volunteers or directing artillery, the focus was always on building clarity under pressure, adaptability in motion, and just the right amount of caffeine-fueled optimism.
  </div>
</ScrollReveal>

<!-- Core Values Section -->
<ScrollReveal className="mt-16 px-6 py-12 bg-[#111] text-center rounded-2xl border border-white/10 shadow-md">
<h2 class="text-2xl font-semibold mb-6 text-primary">What I Bring to Every Project</h2>
<div class="grid grid-cols-1 sm:grid-cols-3 gap-6 max-w-5xl mx-auto text-sm text-white">
  <!-- Mission Focus -->
  <div class="bg-background border border-white/10 p-6 rounded-xl shadow text-secondary">
    <h3 class="text-lg font-semibold mb-2">Mission Focus</h3>
    <ul class="space-y-2 list-inside">
      <li>🚀 Ship what matters — not just what’s possible</li>
      <li>🧭 Align teams on priorities without drowning in meetings</li>
      <li>🎯 Keep the roadmap focused, flexible, and people-first</li>
    </ul>
  </div>

  <!-- Team Trust -->
  <div class="bg-background border border-white/10 p-6 rounded-xl shadow text-accent">
    <h3 class="text-lg font-semibold mb-2">Team Trust</h3>
    <ul class="space-y-2 list-inside">
      <li>🤝 Trust over tickets — lead with empathy, not ego</li>
      <li>🧩 Unblock, support, and actually listen</li>
      <li>☕ Standups matter — especially the ones with coffee</li>
    </ul>
  </div>

  <!-- Strategic Clarity -->
  <div class="bg-background border border-white/10 p-6 rounded-xl shadow text-primary">
    <h3 class="text-lg font-semibold mb-2">Strategic Clarity</h3>
    <ul class="space-y-2 list-inside">
      <li>📣 Communicate with purpose — up, down, and sideways</li>
      <li>🧠 Briefing execs or syncing with peers — clarity wins</li>
      <li>📌 Every decision tied to the mission and the message</li>
    </ul>
  </div>
</div>
</ScrollReveal>

<!-- CTA Section -->
<ScrollReveal className="mt-20 mb-10 text-center space-y-4">
  <h2 class="text-2xl font-semibold text-accent">Let’s build something that matters.</h2>
  <a href="/contact" class="inline-block px-6 py-3 bg-accent text-white rounded-full font-medium transition hover:brightness-110 hover:shadow-glow">
    Get in Touch
  </a>
</ScrollReveal>