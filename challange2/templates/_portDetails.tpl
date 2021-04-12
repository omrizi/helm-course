{{- define "portDetail" -}}
  {{- if eq .Values.deployment.port_name "http" -}}
    name: http
    containerPort: 80
    protocol: TCP
  {{- else if -}}
    
  {{- else-}}

  {{- end -}}
{{- end -}}