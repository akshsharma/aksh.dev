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
        { label: 'CL2103', start: 7, end: 8 },
        { label: 'CL2104', start: 8, end: 9 },
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

<div class="max-w-screen-xl mx-auto p-8 bg-background text-text font-sans">
  <h2 class="text-2xl font-semibold mb-6">Scheduled Timings</h2>

  <!-- Year Labels -->
  <div class="grid grid-cols-[150px_repeat(12,minmax(0,1fr))] mb-1">
    <div></div>
    {#each years as year}
      <div class="text-center text-xs font-bold py-2">{year}</div>
    {/each}
  </div>

  <!-- Gantt Grid Lines -->
  <div class="relative h-full pointer-events-none">
    <div class="absolute inset-0 grid grid-cols-[150px_repeat(12,minmax(0,1fr))] h-full z-0">
      <div></div>
      {#each years as _}
        <div class="border-r border-white/10"></div>
      {/each}
    </div>

    <!-- Gantt Rows -->
    <div class="relative z-10">
      {#each rows as row, i}
        <div class="grid grid-cols-[150px_repeat(12,minmax(0,1fr))] py-3 bg-[#111]/[.8] even:bg-[#1a1a1a]">
          <!-- Label -->
          <div class="text-center text-sm font-bold">{row.label}</div>

          <!-- Gantt Items -->
          <div class="col-span-12 relative grid grid-cols-12">
            {#each row.items as item}
              <div class="flex items-center p-x-100 justify-center text-xs text-text border-[#ff0099] border-l-1 border-r-1 border-t-1 "
                style={`grid-column: ${item.start} / ${item.end}; position: relative;`}
              >
                <span class="absolute top-0 bottom-0 left-0 w-[2px] bg-primary"></span>
                <span class="absolute top-0 bottom-0 right-0 w-[2px] bg-primary"></span>
                <span class="absolute top-1/2 left-0 right-0 h-[2px] bg-secondary -translate-y-1/2"></span>
                <span class="z-10">{item.label}</span>
              </div>
            {/each}
          </div>
        </div>
      {/each}
    </div>
  </div>
</div>