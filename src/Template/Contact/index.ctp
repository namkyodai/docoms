<!-- Top Logo -->
<?php
echo $this->Html->image('main.png', ['alt' => 'DoCoMS', 'class' => 'img-responsive center-block']);
?>
<h1 class="text-center">DoCoMS</h1>
<p class="text-center">
  Documents and Correspondence Management System
</p>
<hr />
<div class="col-md-2">
</div>
<div class="col-md-8">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title">Contact DoCoMS Administrator</h3>
    </div>
    <div class="panel-body">
      <div class="users form">
        <?php
        echo $this->Form->create($contact);
        ?>
        <fieldset>
          <legend>Please fill the form</legend>
          <?php
          echo $this->Form->control('name', ['placeholder' => 'John Doe', 'required' => true]);
          echo $this->Form->control('email', ['placeholder' => 'john.doe@example.com', 'required' => true]);
          echo $this->Form->control('body', ['label' => 'Message']);
          ?>
        </fieldset>
        <?= $this->Form->button(__('Submit'), ['class' => 'btn btn-default']) ?>
        <?= $this->Form->end() ?>
      </div>
    </div>
  </div>
</div>
<div class="col-md-2">
</div>
