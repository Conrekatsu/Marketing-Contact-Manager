<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    
  </head>

<body>
<div class="select-all-container">
    {{-- <label>
        <input type="checkbox" onchange="selectAll(this)">
        <span>Select all</span>
    </label> --}}
    {{-- <div class="actions" id="mass-action"> --}}
        {{-- <button class="btn btn-icon flat active-blue" data-target="multiple-edit-modal" onclick="massUpdater(this,1)"><span class="conicons md edit">Edit</span></button> --}}
        {{-- <button class="btn btn-icon flat active-blue" onclick="massUpdater(this,2)" data-target="multiple-delete-modal" data-action=""><span class="conicons md trash">Delete</span></button> --}}
    {{-- </div> --}}
</div>
<form action="" method="POST" id="mass-delete-form">
	<input type="hidden" id="mass_ids" value="">
	<input type="hidden" id="delete" value="1">
</form>
<table id="inquiry_table" class="display">
	<thead>
        <tr>
            {{-- <th style="width:15px!important;"></th> --}}
            <td>ID</td>
            <td>Salutation</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Email</td>
            <td>Phone</td>
            <td>Job Designation</td>
            <td>Company</td>
            <td>Address 1</td>
            <td>Address 2</td>
            <td>Town/City</td>
            <td>Country</td>
            <td>Contact Type</td>
            <td>Contact Source</td>
            <td>Subscription</td>
            <td>Created</td>
        </tr>
    </thead>
    <tbody>
        @foreach($data as $key => $marketing)
    	<tr>
    	    {{-- <td>
                <label>
                    <input type="checkbox" name="ids[]" onchange="toggleAction('mass-action')" value="{{ $marketing->inquiry_id }}" />
                    <span></span>
                </label>
            </td> --}}
            <td>{{ $marketing->m_id }}</td>
            <td>{{ $marketing->m_salutation }}</td>
            <td>{{ $marketing->m_fname }}</td>
            <td>{{ $marketing->m_lname }}</td>
            <td>@foreach($marketing->emails as $items) @if($loop->last){{ $items->mem_email }}@else{{ $items->mem_email }},@endif
            @endforeach
        </td>
            <td>
                @foreach($marketing->phoneNumbers as $items) @if($loop->last){{ $items->mno_number }}@else {{ $items->mno_number }}, @endif @endforeach
            </td>
            <td>{{ $marketing->m_desig }}</td>
            <td>{{ $marketing->m_company }}</td>
            <td>{{ $marketing->m_add1 }}</td>
            <td>{{ $marketing->m_add2 }}</td>
            <td>{{ $marketing->m_city }}</td>
            <td>{{ $marketing->m_country }}</td>
            <td>{{ $marketing->m_ctype }}</td>
            <td>{{ $marketing->m_csource }}</td>
            <td>{{ $marketing->m_subscription }}</td>
            <td>{{ $marketing->created_at }}</td>
    	</tr>	
    	@endforeach
    </tbody>
</table>

<script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ=" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/8.11.8/sweetalert2.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-colvis-1.6.1/b-flash-1.6.1/b-html5-1.6.1/b-print-1.6.1/datatables.min.css"/>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/jszip-2.5.0/dt-1.10.20/b-1.6.1/b-colvis-1.6.1/b-flash-1.6.1/b-html5-1.6.1/b-print-1.6.1/datatables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/8.11.8/sweetalert2.all.min.js"></script>
<script type="text/javascript">
    $(document).ready( function () {
        $('#inquiry_table').DataTable({
            "order": [[ 15, "desc" ]],
            dom: 'Bfrtipl',
            buttons: [
                {
                    extend: 'excelHtml5',
                    exportOptions: {
                        columns: [2,3,4]
                    },
                    text: 'Export emails'
                },
                {
                    extend: 'excelHtml5',
                    exportOptions: {
                        columns: [2,3,5]
                    },
                    text: 'Export Phone Numbers'
                },
                {
                text: 'Export All',
                action: function ( e, dt, button, config ) {
                    window.location = '{{route('export')}}';
                }        
                }
            ]
        });
     
    } );
    function toggleAction(el){
		let c_count = 0;
		action = document.getElementById(el);
		selectall = action.parentElement;
		if(ifChecked()){
			if(!classie.has(selectall,'active')){
				classie.add(action,'active');
				classie.add(selectall,'active');
			}
		} else {
			classie.remove(action,'active');
			classie.remove(selectall,'active');
		}
	}

	let hasClass, addClass, removeClass;

	if ( 'classList' in document.documentElement ) {
		hasClass = function( elem, c ) {
			return elem.classList.contains( c );
		};
		addClass = function( elem, c ) {
			elem.classList.add( c );
		};
		removeClass = function( elem, c ) {
			elem.classList.remove( c );
		};
	}
	else {
		hasClass = function( elem, c ) {
			return classReg( c ).test( elem.className );
		};
		addClass = function( elem, c ) {
			if ( !hasClass( elem, c ) ) {
				elem.className = elem.className + ' ' + c;
			}
		};
		removeClass = function( elem, c ) {
			elem.className = elem.className.replace( classReg( c ), ' ' );
		};
	}

	function toggleClass( elem, c ) {
		let fn = hasClass( elem, c ) ? removeClass : addClass;
		fn( elem, c );
	}

	let classie = {
	  // full names
	  hasClass: hasClass,
	  addClass: addClass,
	  removeClass: removeClass,
	  toggleClass: toggleClass,
	  // short names
	  has: hasClass,
	  add: addClass,
	  remove: removeClass,
	  toggle: toggleClass
	};

	// transport
	if ( typeof define === 'function' && define.amd ) {
	  // AMD
	  define( classie );
	} else {
	  // browser global
	  window.classie = classie;
	}
	
	function ifChecked(uncheck = 0){
	    let ids = '';
	    let box = document.getElementsByName("ids[]");
	    let isChecked = false;
	    
	    if (uncheck == 1) {
	        for (let i = 0; i < box.length; i++) {
	            box[i].checked = false;
	        }
	    }else{
	        for (let i = 0; i < box.length; i++) {
	            if (box[i].checked) {
	                isChecked = true;
	            }
	        }
	        if (isChecked) {
	            for (let i = 0; i < box.length; i++) {
	                if (box[i].checked && !classie.hasClass(box[i],'parent-checkbox')) {
	                    if (ids != '' && ids != null) {
	                        ids += ',' + box[i].value;
	                    }else{
	                        ids += box[i].value;
	                    }
	                }
	            }
	            return ids;
	        }else{
	            return isChecked;
	        }
	    }
	}
	function selectAll(c){
	    let actions = c.parentElement.nextElementSibling;
		checkboxes = document.getElementsByName('ids[]');
			for(let i=0, n=checkboxes.length;i<n;i++) {
				checkboxes[i].checked = c.checked;
			}
	        if (actions != 'undefined') {
	           classie.add(c.parentElement.parentElement,'active');
	           classie.add(actions,'active');
	        }
	        if(!ifChecked()){
				classie.remove(c.parentElement.parentElement,'active');
	           	classie.remove(actions,'active')
	        }
	}
	
	function massUpdater(el,type){
	    var url = el.getAttribute('data-action');
	   // const activeModal = document.getElementById(el.getAttribute('data-target'));
	   // // const modal = M.Modal.getInstance(activeModal);
	   // let userstoappend = '';
	   // const userContainer = document.getElementById('multiedit-user-container');
	   // const userDeleteContainer = document.getElementById('multidelete-user-container');
	   // let box_update = document.getElementById('multiple-edit-ids');
	   // let box_delete = document.getElementById('multiple-delete-ids');
	    let ids = ifChecked();
	    if (ids != false) {
            let inquiry_ids = [];
            let mass_id =  document.getElementById('mass_ids');
            $.each($("input[name='ids[]']:checked"), function(){
                inquiry_ids.push($(this).val());
            });
            $('#mass_ids').val(inquiry_ids.join(","));
	        Swal.fire({
	          title: 'Are you sure you want to delete the selected inquiries?',
	          type: 'warning',
	          showCancelButton: true,
	          confirmButtonText: 'Confirm',
	       //   confirmButtonClass: 'btn btn-medium',
	       //   cancelButtonClass: 'btn btn-medium ml-2',
	       //   buttonsStyling: true,
	        }).then((result) => {
	            if (result.value) {
                    $.ajax({url: url,
                        headers: {
                          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        method: "POST",
                        data: {
                          ids: $('#mass_ids').val()  
                        },
                        success: function(result){
                            if(result.success){
                                Swal.fire({
	                              type: 'success',
	                              title: 'Inquiries successfully deleted',
	                              showConfirmButton: true,
	                              confirmButtonText: 'Continue',
	                            }).then(
	                                function(){ 
	                                   location.reload();
	                               }
                                );
                            } else {
                                Swal.fire({
	                              type: 'error',
	                              title: result.err_message,
	                              showConfirmButton: true,
	                              confirmButtonText: 'Confirm',
	                            })
                            }
                        }   
                    });
	            }
	        });
	    }else{
	        Swal.fire({
	            title: 'Please select at least 1 inquiry',
	            type: 'info',
	           // html:'',
	            showCancelButton: false,
	            confirmButtonText: 'Confirm',
	           // confirmButtonClass: 'btn btn-medium',
	           // cancelButtonClass: 'btn btn-medium ml-2',
	           // buttonsStyling: true,
	        })
	    }
	}
</script>

  </body>
</html>