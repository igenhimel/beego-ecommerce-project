<!-- views/alert.tpl -->

{{if .Error}}
<div class="alert alert-danger mt-3 text-center" role="alert" id="errorAlert">
    {{.Error}}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
{{else if .Success}}
<div class="alert alert-success mt-3 text-center" role="alert" id="successAlert">
    {{.Success}}
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
{{end}}

<script src="static/js/alert.js" type="text/javascript"></script>
