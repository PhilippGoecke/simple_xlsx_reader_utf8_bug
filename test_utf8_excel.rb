require 'caxlsx'
require 'simple_xlsx_reader'

Axlsx::Package.new do |p|
  p.workbook.add_worksheet(:name => "Testsheet") do |sheet|
    sheet.add_row ['Test', 'Umläut', 'Täst']
    sheet.add_row [1, 2, 3]
  end
  p.serialize('test.xlsx')
end

doc = SimpleXlsxReader.open('test.xlsx')
puts doc.sheets.first.name # 'Sheet1'
puts doc.sheets.first.rows.first.join(', ')

puts doc.sheets.first.rows.first == ['Test', 'Umläute', 'Täst']
