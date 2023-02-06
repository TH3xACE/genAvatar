.. raw:: html

#SpearPhishing #Avatar #Phishing #SocialEngineering


* **If you like the tool and for my personal motivation so as to develop other tools please a +1 star** 

The tool can be used by red team operators during targeted phishing/Spearphishing. 


.. contents:: 
    :local:
    :depth: 1

=============
INTRO
=============

**WARNING: The tool is still under development  and there might be some issues, please create an issue if you found any. **


** Stay tuned : Follow me on twitter @ https://twitter.com/TH3xACE **

=============
Overview
=============

*genAvatar* was developped to assist in SpearPhishing campaign during Red Team operations. It can be used to generate random name based on country of origin, sex and how common the combination of surname and firstname can be.
You can generate up to 90,000 names for each origin (about 45,000 for men and same for women). The more the common ratio is, the more common is the name and the probability that the name exists in real life.

 .. image:: ./img/img0.png
 	:width: 650px
 	:alt: Project


=============
Features
=============

*Generate Name based on:*

* **Origin (country)**
* **Sex (Male or Female)**
* **Common ratio (Very common or rare)**
* **up to 90,000 possible name combination for each origin**

=============
Usage
=============

Example Online mode
--------------------------
 .. code-block:: console
 
   Example: ./genAvatar.sh -c -n 5 -o FRA -s M   
   	    ./genAvatar.sh -n 20 -o CHN    

Mandatory arguments 
--------------------------
* -n : number of name to generate
* -o : Origin - check list below for code


+---------------+--------------+--------------------+
|  **Origin**	|  **Code**    |  **Implemented**   |
+---------------+--------------+--------------------+
|   African     |   AFR        |                    |
+---------------+--------------+--------------------+
|   Algerian    |   ALG        | 	  X         |
+---------------+--------------+--------------------+
|   Chinese     |   CHN        | 	  X         |
+---------------+--------------+--------------------+
|   Spanish     |   SPN        |                    |
+---------------+--------------+--------------------+
|   French      |   FRA        | 	  X         |
+---------------+--------------+--------------------+
|   Italian     |   ITA        |                    |
+---------------+--------------+--------------------+
|   Lebanese    |   LBN        |                    |
+---------------+--------------+--------------------+
|   Moroccan    |   MRN        | 	  X         |
+---------------+--------------+--------------------+
|   Russian     |   RUS        | 	  X         |
+---------------+--------------+--------------------+
|   Portuguese  |   POR        | 	            |
+---------------+--------------+--------------------+

	
Optional arguments 
--------------------------
* -c : Include common ratio 
* -s : Sex, can be either M or F (Male or Female)
* -h : Displays this help text*


=============
Credits
=============
The script was developed by myself with the data being collected online. I would like to thank the people that made these resources available.

=============
Disclaimer
=============
This script is for Educational purpose ONLY. The usual disclaimer applies, especially the fact that me (TH3xACE) is not liable for any damages caused by direct or indirect use of the information or functionality provided by these programs. The author or any Internet provider bears NO responsibility for content or misuse of these programs or any derivatives thereof. By using these programs you accept the fact that any damage (dataloss, system crash, system compromise, etc.) caused by the use of the script is not my responsibility.


