class Document < ActiveRecord::Base
  # Attachments
  mount_uploader :file, FileUploader

  # Relations
  has_many :columns, dependent: :delete_all
  has_many :registers, through: :columns, dependent: :delete_all

  # Rails validations
  validates :name, length: { minimum: 2 }, presence: true, on: [:create, :update]

  # Custom event method
  after_save :process_file

  # Callbacks
  private
    # read & insert file & process it file content
    def process_file
      # Helper variables
      file_dir = self.file.current_directory
      parsed_file = RubyXL::Parser.parse(file_dir)
      worksheets = parsed_file.worksheets
      sheet_data = worksheets.first.sheet_data
      file_columns = sheet_data.rows.shift
      file_registers = sheet_data.rows

      # Setup it columns
      file_columns.cells.each_with_index do |column, column_index|
        rows = []
        current_column = Column.create(name: column.value, document_id: self.id)

        # Setup it columns values
        file_registers.each do |row|
          element = row.cells[column_index]
          next if element.nil?
          rows << [element.value, current_column.id]
        end

        Register.import [:value, :column_id], rows
      end
    end
end