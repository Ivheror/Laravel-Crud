<div class="modal fade" tabindex="-1" role="dialog" id="borrar">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">¡Atención!</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?php $id = $passport['id'] ?>
            <div class="modal-body">
                <p>Se borrará el registro con id:  <?php echo $id?> </p>
            </div>
            <div class="modal-footer">
                <form action="{{action('PassportController@destroy', $id)}}" method="post">
                    @csrf
                    <input name="_method" type="hidden" value="DELETE">
                    <button type="submit" class="btn btn-success">Aceptar</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                </form>
            </div>
        </div>
    </div>
</div>