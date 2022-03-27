import re
import os

camel_pat = re.compile(r'([A-Z])')
under_pat = re.compile(r'_([a-z])')

def camel_to_underscore(name):
    return camel_pat.sub(lambda x: '_' + x.group(1).lower(), name)

def underscore_to_camel(name):
    return under_pat.sub(lambda x: x.group(1).upper(), name)

filepath = "json/"

f = open("loadData.swift", "a")

def formatLoadFunction(filename):
    className = filename.replace(".json", "")
    loadFnName = underscore_to_camel("load_" + className)
    camelCasedName = underscore_to_camel(className)

    st = ('func {}() {{\n'
    '   for {}JSON in storedData["{}"]! {{\n'
    '       let {} = {}(value: {}JSON)\n'
    '       realmDB.add({})\n'
    '   }}\n'
    '}}\n\n').format(loadFnName, camelCasedName, className, camelCasedName, loadFnName.replace("load", ""), camelCasedName, camelCasedName)

    return st

for filename in os.listdir(filepath):
    loadFn = formatLoadFunction(filename)
    f.write(loadFn)
