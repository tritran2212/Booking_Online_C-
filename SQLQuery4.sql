ALTER TABLE DATPHONG DROP CONSTRAINT FK_DATPHONG_KHACHHANG;

SELECT 
    f.name AS ConstraintName,
    OBJECT_NAME(f.parent_object_id) AS TableName,
    COL_NAME(fc.parent_object_id, fc.parent_column_id) AS ColumnName,
    OBJECT_NAME(f.referenced_object_id) AS ReferencedTableName
FROM sys.foreign_keys AS f
INNER JOIN sys.foreign_key_columns AS fc 
    ON f.object_id = fc.constraint_object_id
WHERE OBJECT_NAME(f.parent_object_id) = 'DATPHONG';
-- Xóa ràng buộc MaPhong
ALTER TABLE DATPHONG DROP CONSTRAINT FK__DATPHONG__MaPhong__2DD27B09;

-- Xóa ràng buộc MaKH
ALTER TABLE DATPHONG DROP CONSTRAINT FK__DATPHONG__MaKH__2C3393D0;

-- Xóa bảng DATPHONG
DROP TABLE DATPHONG;


ALTER TABLE DATPHONG DROP CONSTRAINT FK__DATPHONG__MaPhong__2DD27B09;

-- Xóa ràng buộc MaKH
ALTER TABLE DATPHONG DROP CONSTRAINT FK__DATPHONG__MaKH__2C3393D0;

-- Xóa bảng DATPHONG
DROP TABLE DATPHONG;