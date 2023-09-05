<!-- views/alert.tpl -->

{{if .Error}}
<div class="alert alert-danger mt-3 text-center" role="alert" id="errorAlert">
    {{.Error}}
</div>
{{else if .Success}}
<div class="alert alert-success mt-3 text-center" role="alert" id="successAlert">
    {{.Success}}
</div>
{{end}}

<script src="static/js/alert.js" type="text/javascript"></script>
