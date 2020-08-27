<template>
	<b-navbar toggleable="lg" type="dark" variant="dark">
		<b-navbar-brand tag="h1" class="mb-1">Conteo</b-navbar-brand>
		<b-navbar-toggle target="nav-collapse"></b-navbar-toggle>
			<b-collapse id="nav-collapse" is-nav>
				<b-navbar-nav class="ml-auto">
					<b-nav-text class="mb-1 pr-2"><small>{{email}}</small></b-nav-text>
					<b-nav-item>
						<a class="text-decoration-none text-light font-weight-medium"
							data-method="delete" href="/users/sign_out" rel="nofollow">
							SALIR
						</a>
					</b-nav-item>
				</b-navbar-nav>
			</b-collapse>
	</b-navbar>
</template>

<script>
export default {
	props: ['email']
}
</script>
