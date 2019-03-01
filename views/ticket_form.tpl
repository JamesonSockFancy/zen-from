<link rel="stylesheet" href="/css/form_style.css">
<div id="ticket_form">
<div class="title">SEND US A MESSAGE:
    <p>Someone from our team will be in touch within 1-2 business days</p>
</div>
<form action="create_ticket" method="post">
<ul>
    <li>
        <input type="text" placeholder="Name" 
        name="name" class="field" >
    </li>

    <li>
        <input type="email" placeholder="Email" 
        name="email" class="field" required >
    </li>

    <li>
        <input type="text" placeholder="Order Number" 
        name="order" class="field" >
    </li>
  
    <li>
        <input type="text" placeholder="Subject" 
        name="subject" class="field" required>
    </li>

    <li>
        <textarea placeholder="Message" 
        name="description" rows="6" class="field" required>
        </textarea>
    </li>

  <li><input type="submit" value="Submit"></li> 
</ul>
</form>
</div>