<!DOCTYPE html>
<html>
<head>
    <style>
        #sortable-list {
            list-style-type: none;
        }
        .sortable-item {
            margin: 0.5em;
            padding: 0.5em;
            border: 1px solid #ccc;
            cursor: move;
        }
    </style>
</head>
<body>
    <ul id="sortable-list">
        <li class="sortable-item">Item 1</li>
        <li class="sortable-item">Item 2</li>
        <li class="sortable-item">Item 3</li>
    </ul>

    <script>
        var list = document.getElementById('sortable-list');

        // Función para manejar el evento 'dragstart'
        function dragStartHandler(e) {
            e.dataTransfer.setData('text/plain', e.target.id);
        }

        // Función para manejar el evento 'dragover'
        function dragOverHandler(e) {
            e.preventDefault();
            e.dataTransfer.dropEffect = 'move';
        }

        // Función para manejar el evento 'drop'
        function dropHandler(e) {
            e.preventDefault();
            var id = e.dataTransfer.getData('text/plain');
            var draggedElement = document.getElementById(id);
            var dropTarget = e.target;
            var parentElement = dropTarget.parentElement;
            parentElement.insertBefore(draggedElement, dropTarget.nextSibling);
        }

        // Añade los manejadores de eventos a cada elemento de la lista
        var items = list.getElementsByTagName('li');
        for (var i = 0; i < items.length; i++) {
            var item = items[i];
            item.setAttribute('id', 'item-' + i);
            item.setAttribute('draggable', 'true');
            item.addEventListener('dragstart', dragStartHandler);
            item.addEventListener('dragover', dragOverHandler);
            item.addEventListener('drop', dropHandler);
        }
    </script>
</body>
</html>
