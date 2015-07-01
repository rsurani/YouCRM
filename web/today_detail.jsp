<!DOCTYPE html>
<%@include file="lnc/head.jsp" %>
<body>
<!-- Start Content -->
<div class="container-fluid">
    <%@include file="lnc/header.jsp" %>
    <div id="wrapper">
        <%@include file="lnc/left.jsp" %>
        <div id="content">
            <div class="separator"></div>
            <div class="heading-buttons">
                <h3 class="glyphicons display"><i></i> Customer Detail</h3>

                <div class="separator"></div>
            </div>

            <div class="innerLR">

                <form class="form-horizontal">
                    <div class="well">
                        <h4>Customer Details</h4>

                        <div class="separator"></div>
                        <h5>Status:</h5>

                        <div class="separator"></div>
                        <div class="row-fluid">
                            <div class="span5">
                                <div class="control-group">
                                    <label class="control-label">Contact Person</label>

                                    <div class="controls">
                                        <input type="text" placeholder="Enter Contact Person name" class="span10"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Company Name</label>

                                    <div class="controls">
                                        <input type="text" placeholder="Enter Comapany name" class="span10"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Address Line1</label>

                                    <div class="controls">
                                        <input type="text" placeholder="Address Line1" class="span10"/>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">AddressLine12</label>

                                    <div class="controls">
                                        <input type="text" placeholder="Address Line1" class="span10"/>
                                    </div>
                                </div>
                            </div>
                            <div class="span5">
                                <div class="control-group">
                                    <label class="control-label">Zip/Postal Code</label>

                                    <div class="controls">
                                        <div class="input-prepend">
                                            <span class="add-on glyphicons phone"><i></i></span>

                                            <input type="text" id="postal" class="input-large" placeholder="e.g.380001">
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Phone</label>
                                    <div class="controls">
                                        <div class="input-prepend">
                                            <span class="add-on glyphicons phone"><i></i></span>
                                            <input type="text" id="phone" class="input-large"
                                                   placeholder="e.g. 9835678345">
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">E-mail</label>

                                    <div class="controls">
                                        <div class="input-prepend">
                                            <span class="add-on glyphicons envelope"><i></i></span>
                                            <input type="text" id="email" class="input-large"
                                                   placeholder="contact@mosaicpro.biz">
                                        </div>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Location</label>

                                    <div class="controls">
                                        <div class="row-fluid">
                                            <select multiple="multiple" style="width: 100%;" id="select2_2">
                                                <optgroup label="Alaskan/Hawaiian Time Zone">
                                                    <option value="AK">Alaska</option>
                                                    <option value="HI">Hawaii</option>
                                                </optgroup>
                                                <optgroup label="Pacific Time Zone">
                                                    <option value="CA">California</option>
                                                    <option value="NV">Nevada</option>
                                                    <option value="OR">Oregon</option>
                                                    <option value="WA">Washington</option>
                                                </optgroup>
                                                <optgroup label="Mountain Time Zone">
                                                    <option value="AZ">Arizona</option>
                                                    <option value="CO">Colorado</option>
                                                    <option value="ID">Idaho</option>
                                                    <option value="MT">Montana</option>
                                                    <option value="NE">Nebraska</option>
                                                    <option value="NM">New Mexico</option>
                                                    <option value="ND">North Dakota</option>
                                                    <option value="UT">Utah</option>
                                                    <option value="WY">Wyoming</option>
                                                </optgroup>
                                                <optgroup label="Central Time Zone">
                                                    <option value="AL">Alabama</option>
                                                    <option value="AR">Arkansas</option>
                                                    <option value="IL">Illinois</option>
                                                    <option value="IA">Iowa</option>
                                                    <option value="KS">Kansas</option>
                                                    <option value="KY">Kentucky</option>
                                                    <option value="LA">Louisiana</option>
                                                    <option value="MN">Minnesota</option>
                                                    <option value="MS">Mississippi</option>
                                                    <option value="MO">Missouri</option>
                                                    <option value="OK">Oklahoma</option>
                                                    <option value="SD">South Dakota</option>
                                                    <option value="TX">Texas</option>
                                                    <option value="TN">Tennessee</option>
                                                    <option value="WI">Wisconsin</option>
                                                </optgroup>
                                                <optgroup label="Eastern Time Zone">
                                                    <option value="CT">Connecticut</option>
                                                    <option value="DE">Delaware</option>
                                                    <option value="FL">Florida</option>
                                                    <option value="GA">Georgia</option>
                                                    <option value="IN">Indiana</option>
                                                    <option value="ME">Maine</option>
                                                    <option value="MD">Maryland</option>
                                                    <option value="MA">Massachusetts</option>
                                                    <option value="MI">Michigan</option>
                                                    <option value="NH">New Hampshire</option>
                                                    <option value="NJ">New Jersey</option>
                                                    <option value="NY">New York</option>
                                                    <option value="NC">North Carolina</option>
                                                    <option value="OH">Ohio</option>
                                                    <option value="PA">Pennsylvania</option>
                                                    <option value="RI">Rhode Island</option>
                                                    <option value="SC">South Carolina</option>
                                                    <option value="VT">Vermont</option>
                                                    <option value="VA">Virginia</option>
                                                    <option value="WV">West Virginia</option>
                                                </optgroup>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr class="separator bottom"/>
                    <div class="row-fluid">
                        <div class="span6">
                            <label class="control-label">Ratings</label>

                            <div class="controls">
                                <div class="container">
                                    <input type="radio" name="example" class="rating" value="1"/>
                                    <input type="radio" name="example" class="rating" value="2"/>
                                    <input type="radio" name="example" class="rating" value="3"/>
                                    <input type="radio" name="example" class="rating" value="4"/>
                                    <input type="radio" name="example" class="rating" value="5"/>
                                </div>
                            </div>
                        </div>
                        <div class="span6">
                            <label class="control-label">Comments</label>

                            <div class="controls">
                                <textarea rows="5" class="span10"></textarea>
                            </div>
                        </div>
                    </div>
                    <hr class="separator bottom"/>
                    <div class="form-actions" style="margin: 0;">
                        <button type="submit" class="btn btn-icon btn-primary glyphicons circle_ok"><i></i>Save</button>
                        <button type="button" class="btn btn-icon btn-default glyphicons circle_remove"><i></i>Cancel
                        </button>
                    </div>
                </form>
                <!-- End Content -->
            </div>
            <!-- End Wrapper -->
        </div>

        <script langauge="javascript">
            $(document).ready(function () {
                $('.container').rating();
            });
            $('#exampleModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget) // Button that triggered the modal
                var recipient = button.data('whatever') // Extract info from data-* attributes
                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                var modal = $(this)
                modal.find('.modal-title').text('New message to ' + recipient)
                modal.find('.modal-body input').val(recipient)
            });

        </script>
        <%@include file="lnc/bottomjs.jsp" %>
    </div>
</div>
</body>
</html>