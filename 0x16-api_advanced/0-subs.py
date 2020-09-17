#!/usr/bin/python3

import requests

def number_of_subscribers(subreddit):
    """return number of subscribers
       reddit"""
    h = {'user-agent': 'GEEK1050'}
    link = "https://www.reddit.com/r/{}/about".format(subreddit)
    req = requests.get(link, headers=h)

    return req.json().get("data").get("subscribers")
