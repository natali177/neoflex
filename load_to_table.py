import psycopg2
import xlrd
import glob

extension = 'xls'
result = glob.glob('*.{}'.format(extension))
for filename in result:
    print(filename)
    
    book = xlrd.open_workbook(filename)
    x = book.sheet_names()
    sheet_y =x[0]
    sheet = book.sheet_by_name(sheet_y)
    database = psycopg2.connect("dbname ='neoflex' user = 'postgres' host ='localhost' password ='123456' port='5432'")

    cursor = database.cursor()

    query = """INSERT INTO sales_region (borough,neighborhood,building_class_category,tax_class_at_present,block,lot,ease_ment,
building_class_at_present,address,apartment_number,zip_code,residential_units,commercial_units,total_units,land_square_feet,
gross_square_feet,year_built,tax_class_at_time_of_sale,building_class_at_time_of_sale,sale_price,
sale_date) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"""

    for r in range(5, sheet.nrows):
        borough = sheet.cell(r,0).value
        neighborhood = sheet.cell(r,1).value
        building_class_category = sheet.cell(r,2).value
        tax_class_at_present = sheet.cell(r,3).value
        block = sheet.cell(r,4).value
        lot = sheet.cell(r,5).value
        ease_ment = sheet.cell(r,6).value
        building_class_at_present = sheet.cell(r,7).value
        address = sheet.cell(r,8).value
        apartment_number = sheet.cell(r,9).value
        zip_code = sheet.cell(r,10).value
        residential_units = sheet.cell(r,11).value
        commercial_units = sheet.cell(r,12).value
        total_units = sheet.cell(r,13).value
        land_square_feet = sheet.cell(r,14).value
        gross_square_feet = sheet.cell(r,15).value
        year_built = sheet.cell(r,16).value
        tax_class_at_time_of_sale = sheet.cell(r,17).value
        building_class_at_time_of_sale = sheet.cell(r,18).value
        sale_price = sheet.cell(r,19).value
        sale_date = xlrd.xldate.xldate_as_datetime(sheet.cell(r,20).value,book.datemode)

        values = (borough,neighborhood,building_class_category,tax_class_at_present,block,lot,ease_ment,
building_class_at_present,address,apartment_number,zip_code,residential_units,commercial_units,total_units,land_square_feet,
gross_square_feet,year_built,tax_class_at_time_of_sale,building_class_at_time_of_sale,sale_price,
sale_date)

        cursor.execute(query, values)

    cursor.close()

    database.commit()

database.close()

columns = str(sheet.ncols)
rows = str(sheet.nrows)
print ('I just imported Excel into postgreSQL') 