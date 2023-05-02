<script>
    import { Link } from 'svelte-routing';

    export let icon = null;
    export let to = '';

    let active;

    const is = {
        active: 'text-red-500 hover:text-red-600',
        inactive: 'text-slate-700 hover:text-slate-500',
    };

    const getProps = ({ isCurrent }) => (active = isCurrent);
</script>

<Link {to} {getProps} class={'text-xs uppercase py-3 font-bold block ' + (active ? is.active : is.inactive)}>
    {#if icon}<i class="fas fa-{icon} mr-2 text-sm {active ? 'opacity-75' : 'text-slate-300'}" />{/if}
    <slot />
</Link>
