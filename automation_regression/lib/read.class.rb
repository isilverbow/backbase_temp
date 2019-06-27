class Read < SitePrism::Page
  elements :table_headers, '.zebra-striped thead th'
  elements :table_rows,    '.zebra-striped tbody tr'
  element  :header,        '#main h1'
  element  :table_count,   '.current'

  def map_current_page
    results = []
    headers = table_headers.map(&:text)

    table_rows.each do |row|
      data = {}

      row.all('td').each_with_index do |record, i|
        data[headers[i]] = record.text
      end

      results.push(data)
    end
    results
  end
end
