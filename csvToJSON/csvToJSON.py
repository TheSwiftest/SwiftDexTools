import csv 
import json 
import re
import os

camel_pat = re.compile(r'([A-Z])')
under_pat = re.compile(r'_([a-z])')

def camel_to_underscore(name):
    return camel_pat.sub(lambda x: '_' + x.group(1).lower(), name)

def underscore_to_camel(name):
    return under_pat.sub(lambda x: x.group(1).upper(), name)

def csv_to_json(csvFilePath, jsonFilePath):
    jsonArray = []

    #read csv file
    with open(csvFilePath, encoding='utf-8') as csvf: 
        #load csv file data using csv library's dictionary reader
        csvReader = csv.DictReader(csvf, quotechar='"')
        print(csvFilePath)
        #convert each csv row into python dict
        for row in csvReader: 
            #add this python dict to json array
            parsedRow = {}
            for field in row:
                value = row[field]
                parsedValue = value
                try:
                    parsedValue = int(value)
                except:
                    if len(value) == 0:
                        parsedValue = None
                    else:
                        parsedValue = value
                adjustedField = underscore_to_camel(field)
                parsedRow[adjustedField] = parsedValue
            
            jsonArray.append(parsedRow)
  
    #convert python jsonArray to JSON String and write to file
    with open(jsonFilePath, 'w', encoding='utf-8') as jsonf: 
        jsonString = json.dumps(jsonArray, indent=4)
        jsonf.write(jsonString)

baseFilePath = '/Users/briancorbin/Programming/SwiftDexTools/csvToJSON'
csvFilePath = baseFilePath + "/data/csv"
jsonFilePath = baseFilePath + "/data/json"

for filename in os.listdir(csvFilePath):
    inputFilename = csvFilePath + "/" + filename
    jsonFilename = filename.replace(".csv", ".json")
    outputPath = jsonFilePath + "/" + jsonFilename
    csv_to_json(inputFilename, outputPath)