<!-- formulario de alta de tarea -->
<form action="insertar" method="POST" class="my-4">
    <div class="row align-items-center justify-content-between">
        <div class="col-3">
            <div class="form-group">
                <label>Nombre</label>
                <input name="nombre" type="text" class="form-control">
            </div>
        </div>

        <div class="col-3">
            <div class="form-group">
                <label>Apellido</label>
                <input name="apellido" type="text" class="form-control">
            </div>
        </div>

        <div class="col3">
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="myCheckbox" name="invitados" checked>
                <label class="form-check-label" for="myCheckbox">Permite invitados</label>
            </div>
        </div>

        <div class="col3">
            <button type="submit" class="btn btn-primary">Guardar</button>
        </div>
    </div>
</form>
