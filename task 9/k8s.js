
  
  //give output command function
  function give_command_output(){
    var inp = document.getElementById('cmdid').value;
    //alert(inp);
    var xhr = new XMLHttpRequest();
    xhr.open("GET", "http://c54addc48307.ngrok.io/pod?x="+inp);
    xhr.send();
    xhr.onload = function(){
      var output = xhr.responseText;
      document.getElementById("output1").innerHTML = output;
    }
  };
  
  //listcont completed
  function listcont() {
    document.getElementById('cmdid').value = "kubectl get pods";
    give_command_output();    
  };

  //descpod completed
  document.getElementById('descpod').onclick = function(){
    document.getElementById("descpod1").style.display = 'block';
};
//document.getElementById('descpodname').onmouseover = give_pod_output();
document.getElementById('descpod1Apply').onclick = function(){
    document.getElementById('cmdid').value = "kubectl describe pod "+ document.getElementById('descpodname').value;
    give_command_output();
    document.getElementById("descpod1").style.display = 'none';

};
  //now define hidden for for descpod1
  //defination complted

  //listdeploy
  document.getElementById('listdeploy').onclick = function(){
      document.getElementById('cmdid').value = "kubectl get deploy";
      give_command_output();
  };
  //list deploy gives output on the screen.

  //descdeploy
  document.getElementById('descdeploy').onclick = function(){
      document.getElementById('descdeployhide1').style.display = 'block';
  };

  document.getElementById('descdeployapply').onclick = function(){
      document.getElementById('cmdid').value = "kubectl describe deploy "+document.getElementById('descdeployname').value;
      give_command_output();
      document.getElementById('descdeployhide1').style.display = 'none';
    };
    //describes all deployment on screen....
    //def complete
  

    //run pod start
    document.getElementById('runpod').onclick = function(){
      document.getElementById('createcontainerhide1').style.display = 'block';
    };
    
    
    
    document.getElementById("createContainer").onclick = function() {
      var osname = document.getElementById("Inputosname1").value;
      var imgname = document.getElementById("Inputimage1").value;
      document.getElementById('cmdid').value = "kubectl run "+ osname + " --image='"+imgname+"'";
      give_command_output();
      document.getElementById('createcontainerhide1').style.display = 'none';
    };
    //run pod close
  
    
    //del pod
    document.getElementById('delpod').onclick = function(){
      document.getElementById('deletepodhide1').style.display = 'block';
    };
    document.getElementById('deletepodapply').onclick = function(){
      document.getElementById('cmdid').value = "kubectl delete pod "+document.getElementById('deletepodname1').value;
      give_command_output();
      document.getElementById('deletepodhide1').style.display = 'none';
    };

    //create deployment
    
    //expose
    
    document.getElementById('exposedeploy').onclick = function(){
      document.getElementById('exposedeployhide1').style.display = 'block';
    };
    document.getElementById('exposedeploy-apply').onclick = function(){
      document.getElementById('cmdid').value = "kubectl expose deployment "+document.getElementById('exposedeploy-name').value+ " --port="+document.getElementById('exposedeploy-port1').value+" --type="+document.getElementById('exposedeploy-type').value;
      give_command_output();
      document.getElementById('exposedeployhide1').style.display = 'none';
    };

    //create deployment block 
    document.getElementById('createdeploy').onclick = function(){
      document.getElementById('createdeployhide1').style.display = 'block';
    };
    
    
    
    document.getElementById("createdeployapply").onclick = function() {
      var osname = document.getElementById("createdeployname").value;
      var imgname = document.getElementById("createdeployimage").value;
      document.getElementById('cmdid').value = "kubectl create deployment "+ osname + " --image='"+imgname+"'";
      give_command_output();
      document.getElementById('createdeployhide1').style.display = 'none';
    };

    //delete deployment block
    document.getElementById('deldeploy').onclick = function(){
      document.getElementById('deletedeployhide1').style.display = 'block';
    };
    document.getElementById('deletedeployapply').onclick = function(){
      document.getElementById('cmdid').value = "kubectl delete deploy "+document.getElementById('deletedeployname').value;
      give_command_output();
      document.getElementById('deletedeployhide1').style.display = 'none';
    };

    //get service 
    document.getElementById('listsvcs').onclick = function(){
      document.getElementById('cmdid').value = "kubectl get svc";
      give_command_output();
      //document.getElementById('createdeployhide1').style.display = 'none';
    };

    //describe service
    document.getElementById('descsvcs').onclick = function(){
      document.getElementById('descsvchide1').style.display = 'block';
    };

    document.getElementById('descsvcapply').onclick = function(){
      document.getElementById('cmdid').value = "kubectl describe svc "+document.getElementById('dessvcname').value;
      give_command_output();
    document.getElementById('descdeployhide1').style.display = 'none';
    };

    //list pod
    function give_pod_output(){
      var inp = "kubectl get pod | awk '{print $1}'" //document.getElementById('cmdid').value;
      //alert(inp);
      var xhr = new XMLHttpRequest();
      xhr.open("GET", "http://c54addc48307.ngrok.io/pod?x="+inp, true);
      xhr.send();
      xhr.onload = function(){
        var output = xhr.responseText;
        alert(output)  
      }
    };
    // list deployment
    //list pod
    function give_deploy_output(){
      var inp = "kubectl get deploy | awk '{print $1}'" //document.getElementById('cmdid').value;
      //alert(inp);
      var xhr = new XMLHttpRequest();
      xhr.open("GET", "http://c54addc48307.ngrok.io/pod?x="+inp, true);
      xhr.send();
      xhr.onload = function(){
        var output = xhr.responseText;
        alert(output)  
      }
    };

    // connected nodes
    document.getElementById('connectnode').onclick = function(){
      document.getElementById('cmdid').value = "kubectl get nodes";
      give_command_output();
      //document.getElementById('createdeployhide1').style.display = 'none';
    };
    