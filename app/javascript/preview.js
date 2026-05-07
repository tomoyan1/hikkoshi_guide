document.addEventListener('turbo:load', function(){
 const taskForm = document.getElementById('task_form');
 if (!taskForm) return null;

  const imageInput = document.getElementById('task_image');
  const previewImage = document.getElementById('preview');
  
  imageInput.addEventListener('change',function(e) {
    const file = e.target.files[0];
    if (!file) return null;
    const blobUrl = window.URL.createObjectURL(file);
    previewImage.setAttribute('src', blobUrl);
  });
});