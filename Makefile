all:
	helm package common
	helm package appfabric
	helm package orchestrator
	helm package meanfabric
	helm package sparkfabric
	helm repo index .
