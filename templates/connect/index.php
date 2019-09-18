<?php defined( '_JEXEC' ) or die; ?>
<!DOCTYPE html>
<html lang="ru">
  <head>
    <jdoc:include type="head" /> 
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="/templates/<?php echo $this->template; ?>/css/bootstrap.min.css" rel="stylesheet">
    <link href="/templates/<?php echo $this->template; ?>/css/css.css" rel="stylesheet">
    </head>
<body>
    
<header>
   <nav>
    <div class="container">
        <div class="row">
               <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapseex">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="col-sm-3 logo">
                <jdoc:include type="modules" name="logo" style="xhtml" />
            </div>            
            <div class="collapse navbar-collapse" id="collapseex">
            <div class="number">
                <jdoc:include type="modules" name="number" style="xhtml" />
            </div>
            <div class="topMenu">
                <jdoc:include type="modules" name="menu" style="xhtml" />
            </div>
            </div>
        </div>
    </div>
   </nav>
    <section class="slider <?php if ($this->countModules('slider1')==0 && $this->countModules('slider2')==0) {echo 'hidden';} ?>">
        <div class="container">
            <div class="row">
                <div class="col-sm-7">
                     <jdoc:include type="modules" name="slider1" style="xhtml" />
                </div>
                <div class="col-sm-5">
                    <jdoc:include type="modules" name="slider2" style="xhtml" />
                </div>
            </div>
        </div>
    </section>
</header>
<section class="navigation">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <jdoc:include type="modules" name="nav" style="xhtml" />
            </div>
        </div>
    </div>
</section>
<section class="user0 <?php if ($this->countModules('user0-0')==0 && $this->countModules('user0-1')==0 && $this->countModules('user0-2')==0 && $this->countModules('user0-3')==0) {echo 'hidden';} ?>">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 u0">
                <jdoc:include type="modules" name="user0-0" style="xhtml" />
            </div>
            <div class="col-sm-6 u1">
                <jdoc:include type="modules" name="user0-1" style="xhtml" />
            </div>
            <div class="col-sm-6 u2">
                <jdoc:include type="modules" name="user0-2" style="xhtml" />
            </div>
            <div class="col-xs-12 u3">
                <jdoc:include type="modules" name="user0-3" style="xhtml" />
            </div>
        </div>
    </div>
</section>
<section class="user1">
    <div class="container">
        <div class="row">
            <div class="<?php if ($this->countModules('forma')==0){echo 'col-xs-12';}else {echo 'col-sm-7';} ?>">
                <jdoc:include type="message" />
                <jdoc:include type="component" />
            </div>
            <div class="<?php if ($this->countModules('forma')==0){echo 'hidden';}else {echo 'col-sm-5';} ?>">
                <jdoc:include type="modules" name="forma" style="xhtml" />
            </div>
        </div>
    </div>
</section>
<section class="user2 <?php if ($this->countModules('user2-0')==0 && $this->countModules('user2-1')==0 && $this->countModules('user2-2')==0 && $this->countModules('user2-3')==0) {echo 'hidden';} ?>">
    <div class="container">
        <div class="row">
           <div class="col-xs-12 u0">
                <jdoc:include type="modules" name="user2-0" style="xhtml" />
            </div>
            <div class="col-sm-4 u1">
                <jdoc:include type="modules" name="user2-1" style="xhtml" />
            </div>
            <div class="col-sm-4 u2">
                <jdoc:include type="modules" name="user2-2" style="xhtml" />
            </div>
            <div class="col-sm-4 u3">
                <jdoc:include type="modules" name="user2-3" style="xhtml" />
            </div>
        </div>
    </div>
</section>
<section class="user3 <?php if ($this->countModules('user3-0')==0) {echo 'hidden';} ?>">
    <div class="container">
        <div class="row">
           <div class="col-xs-12 u0">
                <jdoc:include type="modules" name="user3-0" style="xhtml" />
            </div>
        </div>
    </div>
</section>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 f1">
                <jdoc:include type="modules" name="footer1" style="xhtml" />
            </div>
            <div class="col-sm-6 f2">
                <jdoc:include type="modules" name="footer2" style="xhtml" />
            </div>
            <div class="col-xs-12 f3">
                <jdoc:include type="modules" name="footer3" style="xhtml" />
            </div>
        </div>
    </div>
</footer>
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	 <script src="/templates/<?php echo $this->template; ?>/js/bootstrap.min.js"></script>
    </body>
</html>