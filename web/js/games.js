    function getParentWidth(id){
        var width;
        width = document.getElementById(id).style.width;
        return width;
        //Does that so we know how far horizontally the animation must go.
        //perhaps have a function that sets the .style of the animation property of picture box!
        //^^Maybe using shorthand maybe not? There might be an animation generator online. 
    }
    
    function createAnimation(id, aName, aDuration, aTiming, aIteration, aPlayState){
        
        var sb;
        sb += "<style type=\"text/css\">\n";
        sb += "#";
        sb += id;
        sb += "{";
        sb += "width:";
        sb += getParentWidth(id)/2;
        sb += ";";
        sb += "-webkit-animation-name:";//scrollRight
        sb += aName + ";";
        sb += "-webkit-animation-duration:";//2s;
        sb += aDuration + ";";
        sb += "-webkit-animation-timing-function: ";//ease-out;
        sb += aTiming + ";";
        sb += "-webkit-animation-iteration-count: ";//2;
        sb += aIteration + ";";
        sb += "-webkit-animation-play-state: ";//paused;
        sb += aPlayState + ";";
    /*standard syntax*/
        sb += "animation-name:";//scrollRight
        sb += aName + ";";
        sb += "animation-duration:";//2s;
        sb += aDuration + ";";
        sb += "animation-timing-function: ";//ease-out;
        sb += aTiming + ";";
        sb += "animation-iteration-count: ";//2;
        sb += aIteration + ";";
        sb += "animation-play-state: ";//paused;
        sb += aPlayState + ";";
        sb += "}";
        sb += "</style>";
        document.write(sb);
        }
    
    function playAnimation(id){
        document.getElementById(id).style.animationPlayState="running";
        document.getElementById(id).style.WebkitAnimationPlayState="running";
        //chrome and safari
        //setTimeout(pauseAnimation, 800);
    }
    function pauseAnimation(id){
        document.getElementById(id).style.animationPlayState="paused";
        document.getElementById(id).style.WebkitAnimationPlayState="paused";//chrome and safari
    }
   
    function getWidth(id){
        var elem = document.getElementById(id);
        var parent = elem.parentNode;
        var width = window.getComputedStyle(elem,null).getPropertyValue("width");
        //var width = window.getComputedStyle(parent,null).getPropertyValue("width");
        return width;
        //return width;
        //Does that so we know how far horizontally the animation must go.
        //perhaps have a function that sets the .style of the animation property of picture box!
        //^^Maybe using shorthand maybe not? There might be an animation generator online.
    }

