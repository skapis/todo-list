const complete = document.getElementById('showcompleted')
const labelcomplete = document.getElementById('labelcompleted')
const completed = document.getElementById('completed')
const add_list = document.getElementById('add_list')
const add_list_form = document.getElementById('add_list_form')
const input_list = document.getElementById('input_list')
const addtask = document.getElementById('newtask')
const addtaskinfo = document.getElementById('newtaskinfo')
const change_name = document.querySelectorAll('.edit_task_name')
const change_list = document.getElementById('change_list_name')
const change_list_form = document.getElementById('change_list_form')
const list_name = document.getElementById('list_name')
const change_deadline = document.querySelectorAll('.tsk_dld')
const change_priority = document.querySelectorAll('.tsk_pri')
const change_task_list = document.querySelectorAll('.tsk_li')
const tsk_name = document.querySelectorAll('.task_name_text')



window.onload = function(){
    console.log(sessionStorage.getItem('toggle'))
    if (sessionStorage.getItem('toggle') == 1){
        complete.classList.remove('bi-toggle-off')
        complete.classList.add('bi-toggle-on')
        if (completed != null){
        completed.style.display = 'block'}
        labelcomplete.innerHTML = 'Hide completed tasks'
    }
};

add_list.onclick = function(){
    add_list.style.display = 'none'
    add_list_form.style.display = 'block'
    input_list.focus()
}

if (document.getElementById('newtask') != null){
    addtask.addEventListener('focus', function(){
        addtaskinfo.style.display = 'flex'
    }); 
}


const handleToogleInput = (e)=>{
    if (complete.classList.contains('bi-toggle-off')){
        complete.classList.remove('bi-toggle-off')
        complete.classList.add('bi-toggle-on')
        labelcomplete.innerHTML = 'Hide completed tasks'
        if (completed != null){
        completed.style.display = 'block'}
        sessionStorage.setItem('toggle',1)
        console.log(sessionStorage.getItem('toggle'))
    }
    else{
        complete.classList.remove('bi-toggle-on')
        complete.classList.add('bi-toggle-off')
        labelcomplete.innerHTML = 'Show completed tasks'
        if (completed != null){
        completed.style.display = 'none'}
        sessionStorage.setItem('toggle',0)
        console.log(sessionStorage.getItem('toggle'))
    }
    
}

if (complete != null){
    complete.addEventListener('click',handleToogleInput);
}


change_name.forEach(item => {
    item.addEventListener('click', function(){
        var task_name = document.getElementById('task_name_'+ item.id)
        var name_input = document.getElementById('change_input_'+ item.id)
        var change_name = document.getElementById(item.id)
        task_name.style.display = 'none'
        change_name.style.display = 'none'
        name_input.style.display = 'block'
        name_input.focus()
    }); 
});

tsk_name.forEach(item => {
    item.addEventListener('click', function(){
        var id = item.id.substring(10, item.id.length)
        var task_name = document.getElementById('task_name_'+ id)
        var name_input = document.getElementById('change_input_'+ id)
        var change_name = document.getElementById(id)
        task_name.style.display = 'none'
        change_name.style.display = 'none'
        name_input.style.display = 'block'
        name_input.focus()
    }); 
});



change_deadline.forEach(item => {
    item.addEventListener('click', function(){
        var deadline_form = document.getElementById('change_'+ item.id)
        var change_dld = document.getElementById(item.id)
        change_dld.style.display = 'none'
        deadline_form.style.display = 'inline-block'
        deadline_form.focus()
    }); 
});

change_priority.forEach(item => {
    item.addEventListener('click', function(){
        var prio_form = document.getElementById('change_'+ item.id)
        var change_pri = document.getElementById(item.id)
        change_pri.style.display = 'none'
        prio_form.style.display = 'inline-block'
        prio_form.focus()
    }); 
});

change_task_list.forEach(item => {
    item.addEventListener('click', function(){
        var list_form = document.getElementById('change_'+ item.id)
        var change_li = document.getElementById(item.id)
        change_li.style.display = 'none'
        list_form.style.display = 'inline-block'
        list_form.focus()
    }); 
});

if (change_list != null){
    change_list.addEventListener('click', function(){
        change_list.style.display = 'none'
        list_name.style.display = 'none'
        change_list_form.style.display = 'block'
        change_list_form.focus()
    });
}



/*
window.onclick = function(){
    console.log('window click')
    var name_input = document.querySelectorAll('.task_name_field')
    var task_name = document.querySelectorAll('.task_name_text')
    console.log(change_name)
    console.log(name_input)
    console.log(task_name)
    
    for (var i=0, max = name_input.length; i< max; i++){
        name_input[i].style.display = 'none'
        task_name[i].style.display = 'inline-block'
        change_name[i].style.display = 'inline-block'
    }
};
*/


(function($) {

	"use strict";

	var fullHeight = function() {

		$('.js-fullheight').css('height', $(window).height());
		$(window).resize(function(){
			$('.js-fullheight').css('height', $(window).height());
		});

	};
	fullHeight();

	$('#sidebarCollapse').on('click', function () {
      $('#sidebar').toggleClass('active');
  });

})(jQuery);

