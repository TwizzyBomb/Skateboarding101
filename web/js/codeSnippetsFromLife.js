/* 
 * THESE ARE A BUNCH OF USEFUL CODE SNIPPETS WITH THE UNDERLYING 
 * TECHNOLOGIES/ TECHNIQUES COMMENTED ABOVE THEM
 */

//THIS TAKES IN A STRING, ADDS ONE CharCode TO LETTERS,
//CAPITALIZES VOWELS, AND RETURNS THE STRING.
//USEFUL TO REMEMBER:
//regEx.test("string")=true (check if contains letter from regEx)
//Check Array if it contains value: array.indexOf(string) > -1 returns true if exists
//CharCodes: charCodeAt() & fromCharCode(), Regular Expressions,
//operand additions, Switch statments

function LetterChanges(str) { 
  //figure out how to not do this to the * reg expression
  //var str2;
  var vowels = ["a", "e", "i", "o", "u"];
  var len = str.length;
  var tmp = ""
  var charCode;
  var newString = "";
  //reg exp - all letters
  var regEx = /[A-Za-z]/;
  for(var i=0;i<=len;i++){
      
    tmp = str.charAt(i);
    
    //tmp = a
    console.log("tmp = " + tmp);
    
    charCode = tmp.charCodeAt();
    //charCode should equal 67, the code of a
    console.log("charCode = " + charCode);
    
    charCode+=1;
    //charCode should equal 68 and be capitalized if vowel
    newLetter = String.fromCharCode(charCode);
    //checks if new string contains vowel
    if(vowels.indexOf(newLetter) > -1){
    switch(newLetter){
    case "a":
        newLetter = "A";
        break;
    case "e":
        newLetter = "E";
        break;
    case "i":
        newLetter = "I";
        break;
    case "o":
        newLetter = "O";
        break;
    case "u":
        newLetter = "U";
        break;
    }
        console.log("print this vowel " + newLetter);
        
    }
    console.log("new charCode = " + charCode);
    

    //checks if newLetter is a letter
    if(regEx.test(tmp)===true ){
        newString+=newLetter;
    }else{
       newString+=tmp;
    }
    //newString adds b to string
    console.log("newString = " + newString); 
  }
  return newString; 
}

//First Factorial
//Useful for: RECURRSION

function FirstFactorial(num) { 
  if(num <= 0 ){
    return -1;
  }else if(num == 1){
    return 1;
  }else{
    num *= FirstFactorial(num - 1); 
  }
  // code goes here  
  return num; 
  
}

//First Reverse
//Useful for: Creative Math

function FirstReverse(str) {
  len = str.length;
  theString = "";
  for(i=0;i<=len;i++){
  plc = str.charAt(len-i);
  theString+=plc;
  }
  // code goes here  
  return theString;
}
    
function LetterChanges(str) { 
  //figure out how to not do this to the * reg expression
  //var str2;
  var vowels = ["a", "e", "i", "o", "u"];
  var len = str.length;
  var tmp = ""
  var charCode;
  var newString = "";
  //reg exp - all letters
  var regEx = /[A-Za-z]/;
  for(var i=0;i<=len;i++){
      
    tmp = str.charAt(i);
    
    //tmp = a
    console.log("tmp = " + tmp);
    
    charCode = tmp.charCodeAt();
    //charCode should equal 67, the code of a
    console.log("charCode = " + charCode);
    
    charCode+=1;
    //charCode should equal 68 and be capitalized if vowel
    newLetter = String.fromCharCode(charCode);
    //checks if new string contains vowel
    if(vowels.indexOf(newLetter) > -1){
    switch(newLetter){
    case "a":
        newLetter = "A";
        break;
    case "e":
        newLetter = "E";
        break;
    case "i":
        newLetter = "I";
        break;
    case "o":
        newLetter = "O";
        break;
    case "u":
        newLetter = "U";
        break;
    }
        console.log("print this vowel " + newLetter);
        
    }
    console.log("new charCode = " + charCode);
    

    //checks if newLetter is a letter
    if(regEx.test(tmp)===true ){
        newString+=newLetter;
    }else{
       newString+=tmp;
    }
    //newString adds b to string
    console.log("newString = " + newString); 
  }
  return newString; 
}