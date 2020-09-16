# age-verification

## set up instructions

pip install virtualenv

virtualenv -p python2 env

source env/bin/activate

pip install django==1.11.24

pip install rollbar

python manage.py runserver

---

Then enter the following at the end of your URL:

age_verification/?birthdate=

Enter birthday in ISO format to see verification working. For example: age_verification/?birthdate=1990-04-05

Enter birthday in any other format to send error. For example: age_verification/?birthdate=04051990

---

To send several errors:
sh send-error.sh
