<?php include 'header.php' ?>
<div id="content-page" class="content-page">
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <div class="iq-card">
                    <div class="iq-card-header d-flex justify-content-between">
                        <div class="iq-header-title">
                            <h4 class="card-title"> Add New Project</h4>
                        </div>
                    </div>
                    <div class="iq-card-body">
                        <p>Add new projects to be viewed on your portfolio.</p>
                        <form id="uploadForm" enctype="multipart/form-data">
                            <p class="retmessage"></p>
                            <div class="form-row">
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault01">Property Name</label>
                                    <input type="text" name="name" class="form-control" id="validationDefault01">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Location</label>
                                    <input type="text" name="location" class="form-control" id="validationDefault02">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Price</label>
                                    <input type="number" name="price" class="form-control" id="validationDefault02">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Status</label>
                                    <input type="text" name="status" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Title</label>
                                    <input type="text" name="title" class="form-control">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label for="image">Images</label>
                                    <input type="file" id="image" class="form-control" name="images[]" multiple accept="image/*">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Feature 1</label>
                                    <input type="text" name="features[]" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Feature 2</label>
                                    <input type="text" name="features[]" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Feature 3</label>
                                    <input type="text" name="features[]" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="validationDefault02">Feature 4</label>
                                    <input type="text" name="features[]" class="form-control">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label for="validationDefault02">Property Details</label>
                                    <textarea name="details" class="form-control" id="summernote" cols="30" rows="10"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <button id="subBtn" class="btn btn-primary" type="submit">Submit form</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php include 'footer.php' ?>

<script>

        // let match = ['image/jpeg','image/png','image/jpg'];
        // $('#file').change(function () {
        //     for (let i = 0; i < this.files.length; i++) {
        //         let file = this.files[i];
        //         let fileType = file.type;
        //         let fileName = file.name;
        //         if (!((fileType == match[0]) || (fileType == match[1]) || (fileType == match[2]))) {
        //             $("#file").val('');
        //             messageRet.innerHTML = "<div class='error-txt'>Sorry, "+fileType+" is not allowed only PNG, JPEG, JPG</div>";
        //             return false;
        //         }                
        //     }
        // })

</script>



<script>
    // let match = ['image/jpeg','image/png','image/jpg'];
    //     $('#image').change(function () {
    //             let file = this.file;
    //             let fileType = file.type;
    //             let fileName = file.name;
    //             if (!(fileType == match[0]) || (fileType == match[1]) || (fileType == match[2])) {
    //                 $("#image").val('');
    //                 messageRet.innerHTML = "<div class='error-txt'>Sorry, "+fileName+" is not allowed only PNG, JPEG, JPG</div>";
    //                 return false;
    //             }                
    //     })

    const form = document.querySelector("#uploadForm"),
    continueBtn = form.querySelector("#subBtn");
    const messageRet = form.querySelector(".retmessage");

    form.onsubmit = (e) => {
        e.preventDefault();
    };

    continueBtn.onclick = () => {
        let xhr = new XMLHttpRequest();
        xhr.open("POST", "upload.php", true);
        xhr.onload = () => {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                if (xhr.status === 200) {
                    let data = xhr.response;
                    messageRet.innerHTML = data;
                    if (data === 'success') {
                        swal('Success!', 'Project Listing Successful.', 'success');
                        // .then(() => {
                        //     window.location='add_project';
                        // });
                    }
                }
            }
        };
        let formData = new FormData(form);
        xhr.send(formData);
    };
</script>
<script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
</script>