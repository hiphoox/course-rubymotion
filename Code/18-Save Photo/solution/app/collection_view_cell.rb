class  CollectionViewCell < UICollectionViewCell

	CELL_IMAGE_VIEW = 6

	def customizeCollectionCell(photo)
    @photoImageView = self.viewWithTag(CELL_IMAGE_VIEW)
    @photoImageView.image = photo    
 	end

end