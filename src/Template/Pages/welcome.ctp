<?php
/* @var $this \Cake\View\View */
$this->assign('title', 'DoCoMS: Welcome to DoCoMS');
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

<p class="text-center">
  <?php
  if ($this->request->session()->read('Auth.User.id')) {
    //echo $this->User->welcome();
    echo 'Welcome '.$this->request->session()->read('Auth.User.first_name');
    //echo " [".$this->User->logout()."]";
    echo ' ['.$this->User->AuthLink->link(__('Logout'), '/logout').']';
    //echo $this->request->session()->read('Auth.User.role');
  } else {
    echo 'Welcome GUEST. If you are an authorized registered user, please '.$this->User->AuthLink->link(__('LOGIN'), '/login');
  }
  ?>
</p>
