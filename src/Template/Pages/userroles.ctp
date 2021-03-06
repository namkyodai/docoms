<?php
/* @var $this \Cake\View\View */
$this->assign('title', 'DoCoMS: User Roles');
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
  <div class="panel panel-info">
    <div class="panel-heading">
      <h3 class="panel-title">General Info</h3>
    </div>
    <div class="panel-body">
      <p>
        In order to properly manage the data in DoCoMS and avoid accidental deletions and system abuses users are given different access control via a role scheme. There are 4 types of users in DoCoMS: unregistered users (guests), users (i.e. registered users), editors and administrators.
      </p>
      <p>
        <u>User Roles</u>
        <dl>
          <dt>Unregistered Users (Guests)</dt>
          <dd>Any user that is not registered in DoCoMS is considered to be an Unregistered User i.e. Guest User. Unregistred users cannot view, add edit or delete any data in DoCoMS. They can only see the general information pages listed in the footer, such as this one.</dd>
          <dt>Users (Registered Users)</dt>
          <dd>Registered users can be added only by an administrator. Once active, a registered user can only view all DoCoMS data except the data of other users' profiles. A registered user cannot add edit or delete any data in DoCoMS, except modifying its own profile data via <?= $this->User->AuthLink->link(__('Profile'), '/profile') ?>.</dd>
          <dt>Editors</dt>
          <dd>Editors can be added only by an administrator. Once active, an editor can view, add edit or delete any data in DoCoMS except other users' profiles. An editor can only edit its own profile data via <?= $this->User->AuthLink->link(__('Profile'), '/profile') ?>.</dd>
          <dt>Administrators</dt>
          <dd>Administrators have full access to all data in DoCoMS. They can view, add edit or delete any data in DoCoMS and can add, edit or delete new users.</dd>
        </dl>
      </p>
    </div>
  </div>
</div>
