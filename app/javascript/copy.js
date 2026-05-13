window.addEventListener('turbo:load', function() {
  const copyButtons = document.querySelectorAll('.address-copy-button');

  copyButtons.forEach(function(button) {
    button.addEventListener('click', function() {
      const address = button.getAttribute("data-address");

      navigator.clipboard.writeText(address).then(() => {
        const originalText = button.innerHTML;

        button.innerHTML = 'コピーしました！';
        button.classList.add('copied-state'); 

        setTimeout(() => {
          button.innerHTML = originalText;
          button.classList.remove('copied-state');
        }, 2000);
      });
    });
  });
});