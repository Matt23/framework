   <div class="wrapper">
      <div class="abs-center wd-xl">
         <!-- START panel-->
         <div class="p">
            <img src="{path}../images/grayline.png" alt="Gray Line" class="img-thumbnail center-block">
         </div>
         <div class="panel widget b0">
            <div class="panel-body">
               <p class="text-center"> Ingrese usuario y password</p>
               <form class="login" name="form1" method="post" action="{path}login/ingresar">
			   		<input type="hidden" name="step" value="2">
                  <div class="form-group has-feedback">
                     <input name="username" id="username" type="text" placeholder="User" class="form-control">
                  </div>
				  <div class="form-group has-feedback">
                     <input name="password" id="password" type="password" placeholder="Password" class="form-control">
                     <span class="fa fa-lock form-control-feedback text-muted"></span>
                  </div>
                  <div class="clearfix">
                     <div class="pull-right">
					 	<button type="submit" class="btn btn-sm btn-primary">Enviar</button>
                     </div>
                  </div>
               </form>
			   {error}
            </div>
         </div>
         <!-- END panel-->
         <div class="p-lg text-center">
            <span>&copy;</span>
            <span>2016</span>
            <span>-</span>
            <span>GL-Tours</span>
         </div>
      </div>
   </div>