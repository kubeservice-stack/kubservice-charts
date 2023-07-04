{{/*
Expand the name of the chart.
*/}}
{{- define "kubeservice-cpupools-controller.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "kubeservice-cpupools-controller.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "kubeservice-cpupools-controller.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "kubeservice-cpupools-controller.labels" -}}
helm.sh/chart: {{ include "kubeservice-cpupools-controller.chart" . }}
{{ include "kubeservice-cpupools-controller.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "kubeservice-cpupools-controller.selectorLabels" -}}
app.kubernetes.io/name: {{ include "kubeservice-cpupools-controller.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the controller service account to use
*/}}
{{- define "kubeservice-cpupools-controller.controller.serviceAccountName" -}}
{{- if .Values.controller.serviceAccount.create }}
{{- default (include "kubeservice-cpupools-controller.fullname" .) .Values.controller.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.controller.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the controller service account to use
*/}}
{{- define "kubeservice-cpupools-controller.deviceplugin.serviceAccountName" -}}
{{- if .Values.deviceplugin.serviceAccount.create }}
{{- default (include "kubeservice-cpupools-controller.fullname" .) .Values.deviceplugin.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.deviceplugin.serviceAccount.name }}
{{- end }}
{{- end }}
