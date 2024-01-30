{{- define "app-template.hardcodedValues" -}}

# Set the nameOverride based on the release name if no override has been set
{{ if not .Values.global.nameOverride }}
global:
  nameOverride: "{{ .Release.Name }}"
{{ end }}

{{ if .Values.enableRbac }}
serviceAccount:
  create: true
{{ end }}

persistence:
  homepage-config: {{- (include "homepage.configVolume" .) | nindent 4 -}}
{{- end -}}
