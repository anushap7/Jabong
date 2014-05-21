$(document).ready(function () {
    $("#new_order").validate({
        rules: {
            "article[name]": { required: true, name: true },
            "article[item]": { required: true, item:true },
            "article[amount]": { required: true, amount:true },

        }
    });
});
 