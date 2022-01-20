#!/bin/bash
# This script was developped to assist in Spear Phishing Campaign / Red Team
# Version="version 1.0.0"
# V1: Date Created : 19/01/2021

##### (Cosmetic) Colour output
RED="\033[01;31m"      # Issues/Errors
GREEN="\033[01;32m"    # Success
YELLOW="\033[01;33m"   # Warnings/Information
BLUE="\033[01;34m"     # Heading
BOLD="\033[01;01m"     # Highlight
RESET="\033[00m"       # Normal



usage () 
{
#####  echo -e " $version \n"
    printf " $version \n"
    echo -e " Example: ./genAvatar.sh -c -n 5 -o FRA -s M /  \n"
    echo "OPTIONS:"
    echo "-c  Include common ratio"
    echo "-n  number of name to generate"
    echo "-o  Origin - check origin.txt for list"
    echo "-s  Sex, can be either M or F (Male or Female)"
    echo "-h  Displays this help text"
    echo -e "\n"
    echo "Running with no options => Please use arguments"
    echo -e " ######################################################### "
}


while getopts "hcn:o:s:" opt; do
  case $opt in
    h) usage;
    ;;	
    c) common="1"
    ;;
    n) numb="$OPTARG"
    ;;
    o) origin="$OPTARG"
    ;;
    s) sex="$OPTARG"
    ;;  
    \?) echo "Invalid option -$OPTARG" >&2
    ;;
  esac
done

call_each()
{
  #header
  #init
  #intro 
  #Argus
  getOrigin
  #getSname
  #getFname
  getConso
}

Argus()
{
echo $common
echo $numb
echo $origin
echo $sex
}

getOrigin()
{

case "$origin" in

FRA) echo -e ""
     echo  -e "${BOLD}${YELLOW}Origin: French${RESET}"
     echo "****************************"
     opaths="Origin/French/FRA_Surname.txt"
     opathf="Origin/French/FRA_FirstName.txt"
	   
	    cat $opaths | sort -R | head -n $numb > /tmp/sout.txt
	    
		if [ "$sex" ]; then
		                
		if [ "$sex" = "M" ]; then        
		  cat $opathf | grep Male | sort -R | head -n $numb > /tmp/fout.txt
		else
		:
		 cat $opathf | grep Female | sort -R | head -n $numb > /tmp/fout.txt
		fi
		        		 	 
		else
		:
		 cat $opathf | sort -R | head -n $numb > /tmp/fout.txt
		fi

	    echo -e ""
       
    ;;
AFR)  echo  "Origin: African"
    
    ;;
ALG) echo -e ""
     echo  -e "${BOLD}${YELLOW}Origin: Algerian${RESET}"
     echo "****************************"
     opaths="Origin/Algerian/ALG_Surname.txt"
     opathf="Origin/Algerian/ALG_FirstName.txt"
	   
	    cat $opaths | sort -R | head -n $numb > /tmp/sout.txt
	    
		if [ "$sex" ]; then
		                
		if [ "$sex" = "M" ]; then        
		  cat $opathf | grep Male | sort -R | head -n $numb > /tmp/fout.txt
		else
		:
		 cat $opathf | grep Female | sort -R | head -n $numb > /tmp/fout.txt
		fi
		        		 	 
		else
		:
		 cat $opathf | sort -R | head -n $numb > /tmp/fout.txt
		fi

	    echo -e ""
   ;;
    
MRN) echo -e ""
     echo  -e "${BOLD}${YELLOW}Origin: Moroccan${RESET}"
     echo "****************************"
     opaths="Origin/Moroccan/MRN_Surname.txt"
     opathf="Origin/Moroccan/MRN_FirstName.txt"
	   
	    cat $opaths | sort -R | head -n $numb > /tmp/sout.txt
	    
		if [ "$sex" ]; then
		                
		if [ "$sex" = "M" ]; then        
		  cat $opathf | grep Male | sort -R | head -n $numb > /tmp/fout.txt
		else
		:
		 cat $opathf | grep Female | sort -R | head -n $numb > /tmp/fout.txt
		fi
		        		 	 
		else
		:
		 cat $opathf | sort -R | head -n $numb > /tmp/fout.txt
		fi

	    echo -e ""
   ;;

CHN) echo -e ""
     echo  -e "${BOLD}${YELLOW}Origin: Chinese${RESET}"
     echo "****************************"
     opaths="Origin/Chinese/CHN_Surname.txt"
     opathf="Origin/Chinese/CHN_FirstName.txt"
	   
	    cat $opaths | sort -R | head -n $numb > /tmp/sout.txt
	    
		if [ "$sex" ]; then
		                
		if [ "$sex" = "M" ]; then        
		  cat $opathf | grep Male | sort -R | head -n $numb > /tmp/fout.txt
		else
		:
		 cat $opathf | grep Female | sort -R | head -n $numb > /tmp/fout.txt
		fi
		        		 	 
		else
		:
		 cat $opathf | sort -R | head -n $numb > /tmp/fout.txt
		fi

	    echo -e ""
       
   
   ;;   

SPN) echo  "Origin: Spanish"
   
   ;;    
   
ITA) echo  "Origin: Italien"
   
   ;;     

LBN) echo  "Origin: Lebanese"
   
   ;;  
   
RUS) echo -e ""
     echo  -e "${BOLD}${YELLOW}Origin: Russian${RESET}"
     echo "****************************"
     opaths="Origin/Russian/RUS_Surname.txt"
     opathf="Origin/Russian/RUS_FirstName.txt"
	   
	    cat $opaths | sort -R | head -n $numb > /tmp/sout.txt
	    
		if [ "$sex" ]; then
		                
		if [ "$sex" = "M" ]; then        
		  cat $opathf | grep Male | sort -R | head -n $numb > /tmp/fout.txt
		else
		:
		 cat $opathf | grep Female | sort -R | head -n $numb > /tmp/fout.txt
		fi
		        		 	 
		else
		:
		 cat $opathf | sort -R | head -n $numb > /tmp/fout.txt
		fi

	    echo -e ""
   
   ;;  
      
*) echo "$origin is not processed"
   ;;

esac


}

#getSname()
#{

#}

#getFname()
#{

#}

getConso()
{

if [ "$common" ]; then
echo -e "${BOLD}${GREEN}Firstname | Surname | Commonality (Greater-More Common)${RESET}"
echo "--------------------------------------------------------"
else
:
echo -e "${BOLD}${GREEN}Firstname | Surname${RESET}"
echo "--------------------------------------------------------"
fi


count=$numb
while [ $count -ne 0 ]
do
  
fname=$( sed "$count!d" /tmp/fout.txt | cut -d "," -f 1 )
sname=$( sed "$count!d" /tmp/sout.txt | cut -d "," -f 1 )

fnrat=$( sed "$count!d" /tmp/fout.txt | cut -d "," -f 3 )
snrat=$( sed "$count!d" /tmp/sout.txt | cut -d "," -f 2 )

#echo $fname
#echo $sname
#echo $fnrat
#echo $snrat

if [ "$common" ]; then
pratio=$(expr $fnrat + $snrat) 
ratio=$(expr $pratio / 9000)
fi
#echo $ratio

echo $fname $sname $ratio

  let "count-=1" 
done
echo "--------------------------------------------------------"
rm /tmp/fout.txt
rm /tmp/sout.txt

}




if [ "$numb" ] && [ "$origin" ]; then
call_each 
else
:
fi



