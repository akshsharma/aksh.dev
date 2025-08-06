<script>
  const years = [
    '2017', '2018', '2019', '2020', '2021', '2022',
    '2023', '2024', '2025', '2026', '2027', '2028'
  ];

  const rows = [
    {
      label: 'Army',
      items: [
        { label: 'CL2101', start: 4, end: 7 },
        { label: 'CL2103', start: 6, end: 8 },
        { label: 'CL2104', start: 7, end: 9 },
        { label: 'CL2105', start: 9, end: 11 }
      ]
    },
    {
      label: 'Career',
      items: [
        { label: 'CL2012', start: 3, end: 9 },
        { label: 'CL2101', start: 9, end: 11 }
      ]
    },
    {
      label: 'Volunteering',
      items: [
        { label: 'CL2015', start: 2, end: 7 }
      ]
    }
  ];
</script>

<div class="hidden md:block">
<div class="max-w-screen-xl mx-auto p-8 bg-[#0d0d0d] text-white font-sans rounded-xl border border-white/10">
  <h2 class="text-3xl font-bold text-center mb-8 text-primary">
    Scheduled Timings
  </h2>

  <!-- Year Labels -->
  <div class="grid grid-cols-[150px_repeat(12,minmax(0,1fr))] mb-3 text-sm">
    <div></div>
    {#each years as year}
      <div class="text-center text-secondary font-medium">{year}</div>
    {/each}
  </div>

  <!-- Gantt Chart -->
  <div class="relative">
    <!-- Vertical Grid Lines -->
    <div class="absolute inset-0 grid grid-cols-[150px_repeat(12,minmax(0,1fr))] z-0 pointer-events-none">
      <div></div>
      {#each years as _}
        <div class="border-r border-white/5"></div>
      {/each}
    </div>

    <!-- Rows -->
    <div class="relative z-10">
      {#each rows as row}
        <div class="grid grid-cols-[150px_repeat(12,minmax(0,1fr))] py-3 even:bg-[#101010] odd:bg-[#161616] rounded-md">
          <!-- Row Label -->
          <div class="text-sm font-semibold text-center text-white">{row.label}</div>

          <!-- Timeline Items -->
          <div class="col-span-12 grid grid-cols-12 gap-x-2 relative">
            {#each row.items as item}
              <div
                class="relative flex items-center justify-center text-xs font-medium text-white border-l border-r border-t border-[#ff0099] bg-[#1f1f1f] px-2 py-1 rounded-sm"
                style={`grid-column: ${item.start} / ${item.end};`}
              >
                {item.label}
              </div>
            {/each}
          </div>
        </div>
      {/each}
    </div>
  </div>
</div>
</div>

<!-- Mobile View: Vertical Cards -->
<div class="block md:hidden space-y-4">
  {#each rows as row}
    <div class="bg-[#111] rounded-xl p-4 border border-white/10">
      <h3 class="text-primary font-semibold text-sm mb-2">{row.label}</h3>

      <div class="space-y-2">
        {#each row.items as item}
          <div class="p-3 bg-[#1a1a1a] rounded-lg border border-[#ff0099]/30">
            <p class="text-sm text-white font-medium">{item.label}</p>
            <p class="text-xs text-secondary">
              {years[item.start]} → {years[item.end - 1]}
            </p>
          </div>
        {/each}
      </div>
    </div>
  {/each}
</div>