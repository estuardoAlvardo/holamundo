<?php 
//tipo documento 1=pdf 2=word
echo @$_GET['documento'];
echo @$_GET['tipoDocumento'];


if(@$_GET['documento']==1 and  @$_GET['tipoDocumento']==1){
header("Content-disposition: attachment; filename=higiene.pdf");
header("Content-type: application/pdf");
readfile("1p/higiene.pdf");
}elseif(@$_GET['documento']==1 and  @$_GET['tipoDocumento']==2){

header("Content-type: application/vnd.ms-word");
header("Content-disposition: attachment; filename=higiene.docx");
readfile("1p/higiene.docx");
}
 ?>


