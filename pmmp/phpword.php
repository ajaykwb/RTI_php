	
<?
$phpWord = new PhpWord();

$objWriter = IOFactory::createWriter($phpWord, 'Word2007');
$objWriter->save('MyDocument.docx');

3
4
5
6
$phpWord = new PhpOffice\PhpWord\PhpWord();
$section = $phpWord->addSection();
$section->addText('Hello World');
 
$objWriter = \PhpOffice\PhpWord\IOFactory::createWriter($phpWord, 'Word2007');
$objWriter->save('MyDocument.docx');
?>