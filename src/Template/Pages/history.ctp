<?php
/* @var $this \Cake\View\View */
$this->assign('title', 'DoCoMS: History');
?>

<!-- Top Logo -->
<?php
echo $this->Html->image('main.png', ['alt' => 'DoCoMS', 'class' => 'img-responsive center-block']);
?>
<h1 class="text-center">DoCoMS</h1>
<p class="text-center">
  Documents and Correspondence Management System
</p>
<hr />

<div class="col-md-12">
  <h3 class="text-center">Development History</h3>
  <div class="timeline">
	   <dl>
       <dt>June 2018</dt>
       <dd class="pos-right clearfix">
         <div class="circ"></div>
         <div class="time">May 15</div>
         <div class="events">
           <div class="pull-left">
             <?= $this->Html->image('main.png', ['class' => 'events-object img-rounded', 'height' => '50px', 'alt' => 'DoCoMS', 'url' => ['controller' => 'Pages', 'action' => 'home']]) ?>
           </div>
           <div class="events-body">
             <h4 class="events-heading">First Release</h4>
             <p>Version 1.0 of DoCoMS is released at GitHub.</p>
           </div>
         </div>
       </dd>
       <dd class="pos-left clearfix">
         <div class="circ"></div>
         <div class="time">Feb 1</div>
         <div class="events">
           <div class="pull-left">
             <?= $this->Html->image('main-OLD.png', ['class' => 'events-object img-rounded', 'height' => '50px', 'alt' => 'DoCoMS', 'url' => ['controller' => 'Pages', 'action' => 'home']]) ?>
           </div>
           <div class="events-body">
             <h4 class="events-heading">Final Test of Version 1.0</h4>
             <p>Final testing of version 1.0 of DoCoMS was completed.</p>
           </div>
         </div>
       </dd>
       <dt>Oct 2017</dt>
       <dd class="pos-right clearfix">
         <div class="circ"></div>
         <div class="time">Oct 1</div>
         <div class="events">
           <div class="pull-left">
             <?= $this->Html->image('main-OLD.png', ['class' => 'events-object img-rounded', 'height' => '50px', 'alt' => 'DoCoMS', 'url' => ['controller' => 'Pages', 'action' => 'home']]) ?>
           </div>
           <div class="events-body">
             <h4 class="events-heading">Start Development</h4>
             <p>Development of DoCoMS started.</p>
           </div>
         </div>
       </dd>
     </dl>
   </div>
   <br />
</div>
