#Function Library

checkDir()
{
if [ ! -d "$1" ] ;then 
           mkdir -p "$1" 
fi
}

copy()
{
cp $1 $2 
} 


move()
{
mv $1 $2  
}
timestamp()
{
YEAR=$(date +%Y -r ${1})
MONTH=$(date +%B -r ${1})
DAY=$(date +%d -r ${1})
}
timetry()
{
		TMP=$(stat --format '%y' "$Line")
                TMP=${TMP%%' '*}
                YEAR=${TMP%%-*}
                TMP=${TMP#*-}
                MONTH=${TMP%%-*}
                TMP=${TMP#*-}
                DAY=${TMP%%-*}
}

STOP()
{
echo "  Process can't stop!!"
}
