<script lang="ts">
  export let error;
  export let status;

  console.log(status)
</script>

<svelte:head>
  <title>{status} You’ve gone off script</title>
</svelte:head>

<div class="min-h-screen flex flex-col items-center justify-center bg-background text-text px-6 text-center relative overflow-hidden">
  <!-- Animated glitch 404 -->
  <h1 class="glitch text-[10rem] font-extrabold text-[#00ff84] leading-none z-10" data-text="{status === 404 ? '404' : status}">
    {status === 404 ? '404' : status}
    404
  </h1>

  <!-- Subtext -->
  <h2 class="text-2xl sm:text-3xl font-semibold text-primary z-10 mt-2">
    You’ve gone off script.
  </h2>

  <p class="mt-2 text-secondary max-w-md z-10">
    Either the page doesn’t exist, or you’ve found something top secret. Don’t worry, we’ll get you home safely.
  </p>

  <!-- CTA Button -->
  <a
    href="/"
    class="mt-6 inline-block px-6 py-3 bg-accent text-white rounded-full font-medium transition
    hover:brightness-110 hover:shadow-glow z-10 transform hover:-translate-y-0.5 hover:scale-105">
    Bring Me Back Home 🚀
  </a>

  <!-- Animated glowing blobs -->
  <div class="absolute -top-20 -right-20 w-72 h-72 bg-primary opacity-20 blur-3xl rounded-full animate-blob1"></div>
  <div class="absolute -bottom-24 -left-28 w-96 h-96 bg-secondary opacity-10 blur-3xl rounded-full animate-blob2"></div>
</div>

<style>
  /* Glitch animation */
  .glitch {
    position: relative;
    display: inline-block;
  }

  .glitch::before,
  .glitch::after {
    content: attr(data-text);
    position: absolute;
    left: 0;
    top: 0;
    color: #ff0099;
    background: transparent;
    overflow: hidden;
    clip: rect(0, 900px, 0, 0);
  }

  .glitch::before {
    animation: glitchTop 2s infinite linear alternate-reverse;
    color: #1f8fff;
  }

  .glitch::after {
    animation: glitchBottom 1.5s infinite linear alternate-reverse;
    color: #00ff84;
  }

  @keyframes glitchTop {
    0% { clip: rect(0, 900px, 0, 0); }
    5% { clip: rect(0, 900px, 50px, 0); transform: translate(-2px, -2px); }
    10% { clip: rect(10px, 900px, 60px, 0); transform: translate(2px, -1px); }
    15% { clip: rect(20px, 900px, 70px, 0); transform: translate(-1px, 1px); }
    20% { clip: rect(0, 900px, 0, 0); transform: none; }
  }

  @keyframes glitchBottom {
    0% { clip: rect(0, 900px, 0, 0); }
    5% { clip: rect(70px, 900px, 100px, 0); transform: translate(2px, 1px); }
    10% { clip: rect(60px, 900px, 90px, 0); transform: translate(-1px, 0); }
    15% { clip: rect(80px, 900px, 110px, 0); transform: translate(1px, -1px); }
    20% { clip: rect(0, 900px, 0, 0); transform: none; }
  }

  /* Blobs */
  @keyframes blob1 {
    0%, 100% {
      transform: scale(1) translateY(0);
    }
    50% {
      transform: scale(1.1) translateY(10px);
    }
  }

  @keyframes blob2 {
    0%, 100% {
      transform: scale(1) translateY(0);
    }
    50% {
      transform: scale(0.95) translateY(-10px);
    }
  }

  .animate-blob1 {
    animation: blob1 8s ease-in-out infinite;
  }

  .animate-blob2 {
    animation: blob2 10s ease-in-out infinite;
  }
</style>