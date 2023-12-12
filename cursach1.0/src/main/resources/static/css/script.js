const container = document.getElementById('containerLogin');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});

// const container = document.getElementById('containerLogin');
// const registerBtn = document.getElementById('register');
// const loginBtn = document.getElementById('login');
//
// container.addEventListener('click', (event) => {
//     if (event.target === registerBtn) {
//         container.classList.add('active');
//     } else if (event.target === loginBtn) {
//         container.classList.remove('active');
//     }
// });