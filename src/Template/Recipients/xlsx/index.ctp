<?php
$this->PhpExcel->setActiveSheetIndex(0);
$worksheet = $this->PhpExcel->getActiveSheet();

// Set Default Font
$worksheet->getDefaultStyle()->getFont()->setName('Arial');
$worksheet->getDefaultStyle()->getFont()->setSize(10);

// Set Worksheet Title
$title = 'Data dump of Table Recipients';
$worksheet->setCellValue('A1', $title);
$worksheet->getStyle('A1')->getFont()->setSize(14);
$worksheet->getRowDimension('1')->setRowHeight(23);
$worksheet->setCellValue('A2','Generated on '.Date("d F, Y"));

// Set Headers
$worksheet->getStyle('A4')->getFont()->setBold(true);
$worksheet->getStyle('A4')->getFill()->setFillType(PHPExcel_Style_Fill::FILL_SOLID);
$worksheet->getStyle('A4')->getFill()->getStartColor()->setRGB('CCCCCC');
$worksheet->duplicateStyle($worksheet->getStyle('A4'), 'B4:F4');
$worksheet->setCellValue('A4', 'Name');
$worksheet->setCellValue('B4', 'Address');
$worksheet->setCellValue('C4', 'Representative');
$worksheet->setCellValue('D4', 'Contact');
$worksheet->setCellValue('E4', 'Telephone');
$worksheet->setCellValue('F4', 'Mobile');

// Set Data
$i = 5;
foreach ($recipients as $recipient) {
  $worksheet->SetCellValueByColumnAndRow(0, $i, $recipient->name);
  $worksheet->SetCellValueByColumnAndRow(1, $i, $recipient->address);
  $worksheet->SetCellValueByColumnAndRow(2, $i, $recipient->representative);
  $worksheet->SetCellValueByColumnAndRow(3, $i, $recipient->contact);
  $worksheet->SetCellValueByColumnAndRow(4, $i, $recipient->telephone);
  $worksheet->SetCellValueByColumnAndRow(5, $i, $recipient->mobile);
  $i++;
}

// Auto-Resize Column Width
for ($i = 0; $i <= 5; $i++) {
$worksheet->getColumnDimension(PHPExcel_Cell::stringFromColumnIndex($i))->setAutoSize(true);
}

?>
