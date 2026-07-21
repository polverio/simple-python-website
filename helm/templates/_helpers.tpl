{{- define "simple-python-website.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "simple-python-website.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name (include "simple-python-website.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{- define "simple-python-website.labels" -}}
helm.sh/chart: {{ printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "simple-python-website.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "simple-python-website.selectorLabels" -}}
app.kubernetes.io/name: {{ include "simple-python-website.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

