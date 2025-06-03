<!-- Vendor -->
<script src="vendor/jquery/jquery.js"></script>
<script src="vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="vendor/popper/umd/popper.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="vendor/common/common.js"></script>
<script src="vendor/nanoscroller/nanoscroller.js"></script>
<script src="vendor/magnific-popup/jquery.magnific-popup.js"></script>
<script src="vendor/jquery-placeholder/jquery.placeholder.js"></script>

<!-- Specific Page Vendor -->
<script src="vendor/raphael/raphael.js"></script>
<script src="vendor/morris/morris.js"></script>
<script src="vendor/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/media/js/dataTables.bootstrap5.min.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="assets/js/theme.js"></script>

<!-- Theme Custom -->
<script src="assets/js/custom.js"></script>

<!-- Theme Initialization Files -->
<script src="assets/js/theme.init.js"></script>

<!-- Examples -->
<script src="assets/js/examples/examples.header.menu.js"></script>
<script src="assets/js/examples/examples.ecommerce.dashboard.js"></script>
<script src="assets/js/examples/examples.ecommerce.datatables.list.js"></script>

<script src="https://cdn.ckeditor.com/ckeditor5/45.1.0/ckeditor5.umd.js"></script>
<script>
    // JS
    const {
        ClassicEditor,
        Autoformat,
        Bold,
        Italic,
        Underline,
        BlockQuote,
        Base64UploadAdapter,
        CloudServices,
        CKBox,
        Essentials,
        Heading,
        Image,
        ImageCaption,
        ImageResize,
        ImageStyle,
        ImageToolbar,
        ImageUpload,
        PictureEditing,
        Indent,
        IndentBlock,
        Link,
        List,
        MediaEmbed,
        Mention,
        Paragraph,
        PasteFromOffice,
        Table,
        TableColumnResize,
        TableToolbar,
        TextTransformation

    } = CKEDITOR;

    const editorConfig = {
        licenseKey: 'eyJhbGciOiJFUzI1NiJ9.eyJleHAiOjE3ODA1MzExOTksImp0aSI6ImJlMWZiNmFhLTk2ZjItNGQ0NC1iMTMxLTAzOGNhZWMzYmJmNiIsInVzYWdlRW5kcG9pbnQiOiJodHRwczovL3Byb3h5LWV2ZW50LmNrZWRpdG9yLmNvbSIsImRpc3RyaWJ1dGlvbkNoYW5uZWwiOlsiY2xvdWQiLCJkcnVwYWwiXSwiZmVhdHVyZXMiOlsiRFJVUCIsIkUyUCIsIkUyVyJdLCJ2YyI6IjRiNGU2YTMwIn0.YzgC_44Qyq4PVO-xPg7OGZecPufQ7c_6B6lO4a19J2QjXyqpzAporZ5dKxJxlfGg7-4dwX6vRLe4F-oribK7ow',
        plugins: [Autoformat,
            BlockQuote,
            Bold,
            CloudServices,
            Essentials,
            Heading,
            Image,
            ImageCaption,
            ImageResize,
            ImageStyle,
            ImageToolbar,
            ImageUpload,
            Base64UploadAdapter,
            Indent,
            IndentBlock,
            Italic,
            Link,
            List,
            MediaEmbed,
            Mention,
            Paragraph,
            PasteFromOffice,
            PictureEditing,
            Table,
            TableColumnResize,
            TableToolbar,
            TextTransformation,
            Underline,
        ],
        toolbar: [
            'undo',
            'redo',
            '|',
            'heading',
            '|',
            'bold',
            'italic',
            'underline',
            '|',
            'link',
            'uploadImage',
            'ckbox',
            'insertTable',
            'blockQuote',
            'mediaEmbed',
            '|',
            'bulletedList',
            'numberedList',
            '|',
            'outdent',
            'indent'
        ],
        heading: {
            options: [{
                    model: 'paragraph',
                    title: 'Paragraph',
                    class: 'ck-heading_paragraph'
                },
                {
                    model: 'heading1',
                    view: 'h1',
                    title: 'Heading 1',
                    class: 'ck-heading_heading1'
                },
                {
                    model: 'heading2',
                    view: 'h2',
                    title: 'Heading 2',
                    class: 'ck-heading_heading2'
                },
                {
                    model: 'heading3',
                    view: 'h3',
                    title: 'Heading 3',
                    class: 'ck-heading_heading3'
                },
                {
                    model: 'heading4',
                    view: 'h4',
                    title: 'Heading 4',
                    class: 'ck-heading_heading4'
                }
            ]
        },
        image: {
            resizeOptions: [{
                    name: 'resizeImage:original',
                    label: 'Default image width',
                    value: null
                },
                {
                    name: 'resizeImage:50',
                    label: '50% page width',
                    value: '50'
                },
                {
                    name: 'resizeImage:75',
                    label: '75% page width',
                    value: '75'
                }
            ],
            toolbar: [
                'imageTextAlternative',
                'toggleImageCaption',
                '|',
                'imageStyle:inline',
                'imageStyle:wrapText',
                'imageStyle:breakText',
                '|',
                'resizeImage'
            ]
        },
        link: {
            addTargetToExternalLinks: true,
            defaultProtocol: 'https://'
        },
        table: {
            contentToolbar: ['tableColumn', 'tableRow', 'mergeTableCells']
        }

    };

    ['long_desc', 'add_info', 'ship_info', 'why_us'].forEach(id => {
        ClassicEditor
            .create(document.querySelector(`#${id}`), editorConfig)
            .then(editor => {
                window[id + '_editor'] = editor;
            })
            .catch(error => {
                console.error(`Error initializing editor for ${id}:`, error);
            });
    });
</script>

</body>

</html>