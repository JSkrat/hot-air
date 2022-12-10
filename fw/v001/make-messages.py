#!/usr/bin/env python3

from sys import argv

def byte_convert(value):
  return value
  if value > 127: return value - 256
  else: return value

def convert(message):
  new = ''
  alph = ((0xA0, 'БГЁЖЗИЙЛПУФЧШЪЫЭЮЯбвгёжзийклмнптчшъыьэюя'), (0xE0, 'ДЦЩдфцщ'))
  trans = ('АВЕКМНОРСТХЬаеорсух', 'ABEKMHOPCTXbaeopcyx')
  state = 0
  length = 0
  for char in message:
    if state == 0:
      if char == '\\':
        state = 1
      elif char == "'":
        new += "'\\'',"
      elif char in alph[0][1]:
        new += str(byte_convert(alph[0][0] + alph[0][1].index(char))) + ', '
        length += 1
      elif char in alph[1][1]:
        new += str(byte_convert(alph[1][0] + alph[1][1].index(char))) + ', '
        length += 1
      elif char in trans[0]:
        new += "'" + trans[1][trans[0].index(char)] + "', "
        length += 1
      else:
        new += "'" + char + "',"
        length += 1
    elif state == 1:
      if char == '\\':
        state = 0
        new += '\\'
        length += 1
      elif char == '(':
        state = 2
      else:
        state = 3
        new += '0x' + char
    elif state == 2:
      if char == ')':
        state = 0
        new += ', '
        length += 1
      else:
        new += char
    else:
      state = 0
      new += char + ', '
      length += 1

  return (length, new)


h_output = open(argv[2], 'w')
c_output = open(argv[3], 'w')

filename = argv[2].split('.')[0].upper()
h_output.write('#ifndef ' + filename + '_H_INCLUDED\n')
h_output.write('#define ' + filename + '_H_INCLUDED\n\n')
h_output.write('#include <avr/pgmspace.h>\n\n')
h_output.write('typedef unsigned char progmemchar;\n')
h_output.write('#define cTerm    16\n')
h_output.write('#define cCheck   94\n')
h_output.write('#define cCelsius 96\n\n')

c_output.write('#include "messages.h"\n\n')

for line in open(argv[1], 'r'):
  key_value = line.strip("\n").split('=')
  if len(key_value) == 2:
    length, value = convert(key_value[1].strip(' '))
    h_output.write('extern const progmemchar m_' + key_value[0].strip(' ') + '[' + str(length + 1) + '] PROGMEM;\n')
    c_output.write('const progmemchar m_' + key_value[0].strip(' ') + '[' + str(length + 1) + '] PROGMEM = {' + value + 'cTerm};\n')

h_output.write('\n#endif // ' + filename + '_H_INCLUDED\n');
h_output.close()
c_output.close()
