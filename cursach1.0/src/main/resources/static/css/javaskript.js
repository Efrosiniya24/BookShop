// Определяем все изображения с классом "image"
const images = document.querySelectorAll('.image');

// Перебираем все изображения
images.forEach(image => {

    // Добавляем обработчик события клика для каждого изображения
    image.addEventListener('click', () => {

        // Получаем ширину и высоту изображения
        const width = image.width;
        const height = image.height;

        // Создаем новое окно с изображением
        const newWindow = window.open('', '', 'width=' + width + ',height=' + height);

        // Отображаем изображение в новом окне
        newWindow.document.body.appendChild(image);
    });
});