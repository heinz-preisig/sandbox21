cd $1 

texfile=$1".tex"
pngfile=$1".png"
dvifile=$1".dvi"

latex -interaction=nonstopmode $texfile;
dvipng -D 300 -T tight -z 9 -bg Transparent -o $pngfile $dvifile



if [ $? -eq 0 ]
 then
   rm *.aux ;
   rm *.log ;
fi


