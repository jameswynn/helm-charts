{{- define "app-template.init" -}}
  {{- include "bjw-s.common.loader.init" . }}

  {{- $_ := mergeOverwrite $.Values (include "app-template.hardcodedValues" $ | fromYaml) -}}
{{- end -}}

{{/* Append the configMap volume to the volumes */}}
{{- define "homepage.configVolume" -}}
enabled: "true"
type: "custom"
volumeSpec:
  configMap:
    name: {{ (default (include "bjw-s.common.lib.chart.names.fullname" .) .Values.config.useExistingConfigMap) }}
subPath:
  - path: bookmarks.yaml
    mountPath: /app/config/bookmarks.yaml
  - path: docker.yaml
    mountPath: /app/config/docker.yaml
  - path: kubernetes.yaml
    mountPath: /app/config/kubernetes.yaml
  - path: services.yaml
    mountPath: /app/config/services.yaml
  - path: settings.yaml
    mountPath: /app/config/settings.yaml
  - path: widgets.yaml
    mountPath: /app/config/widgets.yaml
{{- end -}}
