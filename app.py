import requests
from bottle import route, template, run, static_file, request
import sendgrid
import os
from sendgrid.helpers.mail import *


@route('/create_ticket', method=['GET', 'POST'])
def handle_form():
    if request.POST:
        # Get the form data
        subject1 = request.forms.get('subject')
        description = request.forms.get('description')
        email = request.forms.get('email')
        name = request.forms.get('name')
        order = request.forms.get('order')
        sg = sendgrid.SendGridAPIClient(apikey=os.environ.get('SENDGRID_API_KEY'))
        from_email = Email("info@sockfancy.com")
        to_email = Email(email)
        subject = "xContactx form submission " + subject1
        content = Content("text/plain", description)
        mail = Mail(to_email, subject, from_email, content)
        response = sg.client.mail.send.post(request_body=mail.get())
        print(response.status_code)
        print(response.body)
        print(response.headers)

    return template('ticket_form')

@route('/css/<filename>')
def send_css(filename):
    return static_file(filename, root='static/css')



if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)


# @route('/create_ticket', method=['GET', 'POST'])
# def handle_form():
#     if request.POST:
#         # Get the form data
#         subject = request.forms.get('subject')
#         description = request.forms.get('description')
#         email = request.forms.get('email')
#         name = request.forms.get('name')
#         order = request.forms.get('order')

#         # Package the data for the API
#         data = {'request': {'name': name, 'email': email, 'order': order, 'subject': subject, 'comment': {'body': ' email: ' + email + ' name: ' + name + ' order: ' + order + ' body: ' + description }}}
#         ticket = json.dumps(data)

#         # Make the API request
#         user = 'dummy@sockfancy.com' + '/token'
#         api_token = 'gY1gJOPh7SIBiy3NzpEGIIWjtO6c99O3tNbZxoQH'
#         url = 'https://sockfancy.zendesk.com/api/v2/requests.json'
#         headers = {'content-type': 'application/json'}
#         r = requests.post(
#             url, 
#             data=ticket, 
#             auth=(user, api_token),
#             headers=headers
#         )
#         if r.status_code != 201:
#             if r.status_code == 401 or 422:
#                 status = 'Could not authenticate you. Check your email address or register.'
#             else:
#                 status = 'Problem with the request. Status ' + str(r.status_code)
#             return status

#     return template('ticket_form')

# @route('/css/<filename>')
# def send_css(filename):
#     return static_file(filename, root='static/css')
