<script lang="ts">
	import { onMount } from 'svelte';
	import { createEventDispatcher } from 'svelte';

	export let className = '';
	let element: HTMLElement;
	let visible = false;
	const dispatch = createEventDispatcher();

	onMount(() => {
		const observer = new IntersectionObserver(
			([entry]) => {
				if (entry.isIntersecting) {
					visible = true;
					dispatch('visible');
				}
			},
			{ threshold: 0.1 }
		);

		observer.observe(element);
		return () => observer.disconnect();
	});
</script>

<div bind:this={element} class={`reveal ${visible ? 'visible' : ''} ${className}`}>
	<slot />
</div>
