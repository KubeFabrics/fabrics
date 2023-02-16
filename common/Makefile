all:
	helm dependency update .
	helm package charts/harbor
	helm package charts/keycloak
	helm package charts/vault
