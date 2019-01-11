// Custom jQuery
// ----------------------------------- 


(function(window, document, $, undefined){

  $(function(){

    //
    // Zero configuration
    // 

    $('#datatable1').dataTable({
        'paging':   true,  // Table pagination
        'ordering': true,  // Column ordering 
        'info':     true,  // Bottom left status text
        // Text translation options
        // Note the required keywords between underscores (e.g _MENU_)
        oLanguage: {
            sSearch:      'Buscar en todas las columnas:',
            sLengthMenu:  '_MENU_ registros por pantalla',
            info:         'Mostrando p&aacute;gina _PAGE_ de _PAGES_',
            zeroRecords:  'Nothing found - sorry',
            infoEmpty:    'No hay registros disponibles',
            infoFiltered: '(filtrado de _MAX_ registros en total)'
        }
    });


    // 
    // Filtering by Columns
    // 

    var dtInstance2 = $('#datatable2').dataTable({
        'paging':   true,  // Table pagination
        'ordering': true,  // Column ordering 
        'info':     true,  // Bottom left status text
        // Text translation options
        // Note the required keywords between underscores (e.g _MENU_)
        oLanguage: {
            sSearch:      'Buscar en todas las columnas:',
            sLengthMenu:  '_MENU_ registros por pantalla',
            info:         'Mostrando p&aacute;gina _PAGE_ de _PAGES_',
            zeroRecords:  'Nothing found - sorry',
            infoEmpty:    'No hay registros disponibles',
            infoFiltered: '(filtrado de _MAX_ registros en total)'
        }
    });
    var inputSearchClass = 'datatable_input_col_search';
    var columnInputs = $('tfoot .'+inputSearchClass);

    // On input keyup trigger filtering
    columnInputs
      .keyup(function () {
          dtInstance2.fnFilter(this.value, columnInputs.index(this));
      });


    // 
    // Column Visibilty Extension
    // 

    $('#datatable3').dataTable({
        'paging':   true,  // Table pagination
        'ordering': true,  // Column ordering 
        'info':     true,  // Bottom left status text
        // Text translation options
        // Note the required keywords between underscores (e.g _MENU_)
        oLanguage: {
            sSearch:      'Buscar en todas las columnas:',
            sLengthMenu:  '_MENU_ registros por pantalla',
            info:         'Mostrando p&aacute;gina _PAGE_ de _PAGES_',
            zeroRecords:  'Nothing found - sorry',
            infoEmpty:    'No hay registros disponibles',
            infoFiltered: '(filtrado de _MAX_ registros en total)'
        },
        // set columns options
        'aoColumns': [
            {'bVisible':false},
            {'bVisible':true},
            {'bVisible':true},
            {'bVisible':true},
            {'bVisible':true}
        ],
        sDom:      'C<"clear">lfrtip',
        colVis: {
            order: 'alfa',
            'buttonText': 'Show/Hide Columns'
        }
    });

    // 
    // AJAX
    // 

    $('#datatable4').dataTable({
        'paging':   true,  // Table pagination
        'ordering': true,  // Column ordering 
        'info':     true,  // Bottom left status text
        sAjaxSource: '../server/datatable.json',
        aoColumns: [
          { mData: 'engine' },
          { mData: 'browser' },
          { mData: 'platform' },
          { mData: 'version' },
          { mData: 'grade' }
        ]
    });
  });

})(window, document, window.jQuery);
