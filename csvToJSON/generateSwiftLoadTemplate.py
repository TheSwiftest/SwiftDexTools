import re
import os
import json

camel_pat = re.compile(r'([A-Z])')
under_pat = re.compile(r'_([a-z])')

def camel_to_underscore(name):
    return camel_pat.sub(lambda x: '_' + x.group(1).lower(), name)

def underscore_to_camel(name):
    return under_pat.sub(lambda x: x.group(1).upper(), name)

filepath = "data/json/"

f = open("loadData.swift", "a")

def formatLoadFunction(filename):
    storedDataName = filename.replace(".json", "")
    loadFnName = underscore_to_camel("load_" + storedDataName)
    className = loadFnName.replace("load", "").replace("Indices", "Index").replace("ies", "y").removesuffix("s")

    with open(filepath + filename, "r") as jsonFile:
        st = ('func {}() {{\n'
        '   for objectJSON in storedData["{}"]! {{\n'
        '       let realmObject = {}(value: objectJSON)\n').format(loadFnName, storedDataName, className)
        data = json.load(jsonFile)[0]
        keys = filter(lambda x: x.endswith("Id") and x != "localLanguageId", list(data.keys()))
        for val in keys:
            tcla = val.replace("Id", "")
            gfrw = tcla[0].upper() + tcla[1:]
            ist = '        realmObject.{} = realmDB.object(ofType: {}.self, forPrimaryKey: objectJSON["{}"])\n'.format(val.replace("Id", ""), gfrw, val)
            st += ist
        
        st += ('       realmDB.add(realmObject)\n'
        '   }\n'
        '}\n\n')
    
    return st

for filename in sorted(os.listdir(filepath)):
    loadFn = formatLoadFunction(filename)
    f.write(loadFn)
