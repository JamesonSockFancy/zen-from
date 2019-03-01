<link rel="stylesheet" href="/css/form_style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<div id="ticket_form">
<form action="create_ticket" method="post">
    <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" placeholder="Name" 
            name="name" class="field" >
    </div>

    <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" placeholder="Email" 
            name="email" class="field" required >
    </div>

    <div class="form-group">
            <label for="order">Order</label>
            <input type="text" class="form-control" placeholder="Order Number" 
            name="order" class="field" >
    </div>

    <div class="form-group">
            <label for="subject">Subject</label>
            <input type="text" class="form-control" placeholder="Subject" 
            name="subject" class="field" required>
    </div>

    <div class="form-group">
            <label for="message">Message</label>
            <textarea placeholder="Message" 
            name="description" rows="6" class="field" required>
            </textarea>
    </div>

  <button type="submit" value="Submit" class="btn btn-primary">Submit</button>

</form>
</div>