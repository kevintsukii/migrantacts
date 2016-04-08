

$(document).ready(function(){ // begin document.ready block
//Hiding the reload button before the user clicks on the checkboxes
$("#reload").hide();
    
    //jquery code here
    //Taking values from the checkboxes on submit button
        
        $("#frm1").submit(function() {

            if($("#frm1 input:checkbox:checked").length>0) {

                    //Hiding the content div and only the results div. A way to make people don't check boxes after they submit
                    $("#content").hide();
                    //Showing the reload button
                    $("#reload").show();
                    var allVals = [];
                    $("input.test[type=checkbox]:checked").each(function() {
                    //alert($(this).val());
                    allVals.push($(this).val());
                    });

                //Converting the items in the array into integers. 
                    length = allVals.length;
                    console.log(length);
                    for(i=0;i<length;i++){
                        allVals[i] = parseInt(allVals[i]);
                        console.log(allVals[i]);
                        }

                //Importing externally from CSV
                    var options = new Miso.Dataset({
                        url:"data/options_es.csv",
                        delimiter: ','
                        
                    }); 

                    options.fetch({
                        success:function(){
                            console.log(this);
                            var dataJSON = this.toJSON();
                            console.log(dataJSON);
                            dosomething(dataJSON);
                        }
                    });

                     function dosomething(options) {
                        var leng = allVals.length;

                        console.log(leng);
                        $("#results").html("");
                        $("#results").append("<h1>Results</h1>");
                        for (var i=0; i<leng; i++) {
                            j = allVals[i];
                            $("#results").append("<div class = 'show'> <p> <b>You selected:</b> "+options[j-1].selection+"</p> <p> <b>You may want to look into:</b> "+options[j-1].result+"</p></div>");
                        }
                    }

                    //Updating the values of the database. Sending all the values stored in the allValls array

                    // SEND TO PHP page, then to MySQL database   

    
                  $.ajax({
                    
                    /*  Goes to the database. */
                        url: "data/vote.php",
                        type: "post",
                        datatype: 'html',
                        data: 
                            '&allVals='+allVals//first to the database, later array from above. Took this soln from Stackoverflow
                        ,
                    
                    /* What the database sends back */
                        success: function(data){
                           // console.log(data);
                            dataJSON = $.parseJSON(data);
                            console.log(dataJSON); 
                            //outputvotes(dataJSON);
                        },
                        error:function(){
                            console.log('There is an error submitting');
                        }
                    });
                    

                    function outputvotes(lq){

                        $("#vote_results").html(""); // empty out the vote_results <div>

                        var leng = lq.length;
                        
                        for (var i=0; i<leng; i++) {
                            $("#vote_results").append("<div class='card'><p>Option: " + lq[i].option_id + "</p><p> Vote number " + lq[i].vote_total + "</p></div>");    
                        }
                    }


             } //End of if

            else
                {
                    $("#noclickresults").append("<div class = 'show'> Sorry, please select an option.</div>");
                    $("#reload").show();
                }

            
            return false;
    }); //End of what happens when you click on submit

    

    //Reloading the page for more
    $('#reload').click(function() {
        location.reload();
    });


}); //end document.ready block