<?php

$inputs = $_POST;
$inputs['printdate']=''; 
// A dummy value to avoid a PHP notice as we don't have "printdate" in the POST variables. 

$assembly = 'Microsoft.Office.Interop.Word, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c';
$class = 'Microsoft.Office.Interop.Word.ApplicationClass';

$w = new DOTNET($assembly, $class);
$w->visible = true;

$fn = __DIR__ . '\\template.docx';

$d = $w->Documents->Open($fn);

echo "Document opened.<br><hr>";

$flds = $d->Fields;
$count = $flds->Count;
echo "There are $count fields in this document.<br>";
echo "<ul>";
$mapping = setupfields();

foreach ($flds as $index => $f)
{
    $f->Select();
    $key = $mapping[$index];
    $value = $inputs[$key];
    if ($key == 'gender')
    {
        if ($value == 'm')
            $value = 'Mr.';
        else
            $value = 'Ms.';
    }
    
    if($key=='printdate')
        $value=  date ('Y-m-d H:i:s');

    $w->Selection->TypeText($value);
    echo "<li>Mappig field $index: $key with value $value</li>";
}
echo "</ul>";

echo "Mapping done!<br><hr>";
echo "Printing. Please wait...<br>";

$d->PrintOut();
sleep(3);
echo "Done!";

$w->Quit(false);
$w=null;



function setupfields()
{
    $mapping = array();
    $mapping[0] = 'gender';
    $mapping[1] = 'name';
    $mapping[2] = 'age';
    $mapping[3] = 'msg';
    $mapping[4] = 'printdate';
    

    return $mapping;
}