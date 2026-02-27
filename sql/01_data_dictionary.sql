-- =====================================================
-- Data Dictionary Query
-- Description: Displays table structure and data types
-- =====================================================

SELECT
    table_name,
    column_name,
    data_type,
    is_nullable
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, ordinal_position;