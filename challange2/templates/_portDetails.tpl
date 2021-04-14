{{- define "port" -}}
{{- if eq .Values.deployment.port_name "http" -}}
- name: http
  containerPort: 80
protocol: TCP
{{- else if eq .Values.deployment.port_name "https" -}}
- name: https
  containerPort: 443
  protocol: TCP
{{- else -}}
- name: {{- .Values.deployment.port_name -}}
  containerport: {{- .Values.deployment.port -}}
  protocol: TCP
{{- end -}}
{{- end -}}