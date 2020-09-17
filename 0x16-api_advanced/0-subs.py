#!/usr/bin/python3
"""0-subs.py"""
import requests

def number_of_subscribers(subreddit):
    """return number of subscribers
       reddit"""
    h = {'user-agent': 'GEEK1050'}
    link = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    req = requests.get(link, headers=h)
    if req.status_code is 404:
        return 0

    return req.json().get("data").get("subscribers")
