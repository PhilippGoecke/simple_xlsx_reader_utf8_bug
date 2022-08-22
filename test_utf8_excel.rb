require 'simple_xlsx_reader'

doc = SimpleXlsxReader.open('test.xlsx')
puts doc.sheets.first.name # 'Sheet1'
puts doc.sheets.first.rows.first.join(', ')
puts doc.sheets.first.rows.first == ['Test', 'Umläute', 'Täst']
