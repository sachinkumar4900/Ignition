def doPost(request, session):
	import json
	text = request['data'].decode('utf-8');
	tag_path = "[default]ReadWriteWebDevTag"
	pt = "[default]memTag"
	system.tag.writeBlocking(tag_path, text)
	
	system.tag.writeBlocking(pt, text)
	
	
	return {
        "json": {"status": "success", "received": text},
        "code": 200
    }