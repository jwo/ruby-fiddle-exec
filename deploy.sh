
# For seemless deploys, we scale up, push, and scale back down
# details: https://devcenter.heroku.com/articles/labs-preboot/
#
# make sure you've run: 
#    heroku labs:enable preboot
#

heroku ps:scale web+1
git push heroku master
heroku ps:scale web-1
