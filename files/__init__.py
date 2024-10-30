import os
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

app = Flask(__name__)
APP_SETTINGS = os.environ["APP_SETTINGS"]
app.config.from_object(APP_SETTINGS)

db = SQLAlchemy(app)
migrate = Migrate(app, db)

from files import routes