import os

def lambda_handler(event, context):
    return { "message" : "{} from Lambda!".format(os.environ['greeting']) }
