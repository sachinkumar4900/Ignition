def doPost(request, session):
	import json
	text = request['data'].decode('utf-8');
	tag_path = "[default]Teams"
	system.tag.writeBlocking(tag_path, text)
	
	return {
        "json": {"status": "success", "received": request},
        "code": 200
    }