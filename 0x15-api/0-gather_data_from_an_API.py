#!/usr/bin/python3
"""
gather_data_from_API
"""
if __name__ == "__main__":
    from sys import argv
    import requests
    import json
    _id = argv[1]
    url_usr = "https://jsonplaceholder.typicode.com/users/"
    url_todo = "https://jsonplaceholder.typicode.com/todos?/"

    req_usr = requests.get(url_usr + _id).text
    req_todo = requests.get(url_todo + _id).text
    done = 0
    ins = []

    usr = json.loads(req_usr)
    todo = json.loads(req_todo)

    for item in todo:
        if item['completed']:
            done += 1
            ins.append(item['title'])

    print("Employee {} is done with tasks({}/{}):"
          .format(usr['name'], done, len(todo)))

    for element in ins:
        print("\t {}".format(element))
