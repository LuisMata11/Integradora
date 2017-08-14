class Foto < ApplicationRecord
	#attr_accessible :lugar,:foto,:descripcion,:capacidad,:grupo
	GALERIA = File.join Rails.root, 'public', 'foto_lugar'
	after_save :guardar_foto

def change
    add_column :fotos, :extension, :string
  end

def foto=(file_data)
	#extension = foto_path
	unless file_data.blank? 
	@file_data=file_data 
    self.extension = file_data.original_filename.split('.').last.downcase
	end	
	end

def foto_filename
	File.join GALERIA, "#{id}.#{extension}"
end

def foto_path
	"/foto_lugar/#{id}.#{extension}"
end
def has_foto?
	File.exists? foto_filename
end

private
	def guardar_foto
		if @file_data
			FileUtils.mkdir_p GALERIA 
			File.open(foto_filename, 'wb') do |f|
				f.write(@file_data.read)
			end
		@file_data = nil
		end
	end
end
