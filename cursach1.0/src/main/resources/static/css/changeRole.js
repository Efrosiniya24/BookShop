
    window.addEventListener('DOMContentLoaded', (event) => {
    const editLinks = document.querySelectorAll('.edit-link');
    const editForms = document.querySelectorAll('.edit-form');

    editLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
    event.preventDefault();
    const userId = link.dataset.userid;
    const editForm = document.querySelector(`.edit-form[data-userid="${userId}"]`);
    const editLink = document.querySelector(`.edit-link[data-userid="${userId}"]`);

    editForm.style.display = 'block';
    editLink.style.display = 'none';
});
});

    editForms.forEach((form) => {
    const saveButton = form.querySelector('.save-button');

    saveButton.addEventListener('click', (event) => {
    event.preventDefault();
    const userId = form.dataset.userid;
    const editForm = document.querySelector(`.edit-form[data-userid="${userId}"]`);
    const editLink = document.querySelector(`.edit-link[data-userid="${userId}"]`);

    editForm.style.display = 'none';
    editLink.style.display = 'block';
});
});
});
