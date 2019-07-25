{{/* Auth Init Container Template */}}
{{- define "auth.labels" }}
{{- range $key, $value := .Values.labels }}
{{ $key }}: {{ $value | quote }}
{{- end }}
app.kubernetes.io/name: {{ .Release.Name }}-auth
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
heritage: {{ .Release.Service | quote }}
release: {{ .Release.Name | quote }}
chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end }}

{{/* Auth Resources */}}
{{- define "auth.resources" }}
limits:
  memory: {{ .Values.resources.limits.memory }}
requests:
  cpu: {{ .Values.resources.limits.cpu }}
  memory: {{ .Values.resources.requests.memory }}
{{- end }}