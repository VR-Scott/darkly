import requests
import urllib.request
from bs4 import BeautifulSoup
import sys

the_list = []

def check_readme(url):
	print("url is :" + url)
	req = requests.get(url) 	#requests url contents
	soup = BeautifulSoup(req.text, "html.parser")	#uses bs4 which parses the contents using html.parser
	for link in soup.find_all('a'):		#finds all links
		if link.get('href') == "README" :	#if link is a README
			f = urllib.request.urlopen(url + '/' + link.get('href')) #opens the file
			myfile = f.read()	#reads contents from file into var
			if myfile not in the_list:	#if contents not already in the array the_list
				the_list.append(myfile)	#adds contents to that array.
				print(myfile)	#prints the contents.
			break				#breaks out for loop as readme is always last file.
		elif link.get('href') != "../":	#link not Read me and not the last link back
			req.close()	#close the request
			check_readme(url + '/' + link.get('href')) #pass current url with link appended back into this funct.

def main(arg):
	url = 'http://' + arg + '/.hidden/'
	check_readme(url)
	with open('result_crawler.txt', 'w') as file_handler: 
		for item in the_list:
			file_handler.write("{}\n".format(item)) #writes the contents of the array into the file.

if __name__ == "__main__":
	try:
		arg = sys.argv[1]
		main(arg)
	except IndexError:
		print("=> Error: one argument is missing (ex: python3 script.py 192.168.1.109)")