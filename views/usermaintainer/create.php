<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Usermaintainer */

$this->title = 'User Create';
$this->params['breadcrumbs'][] = ['label' => 'Usermaintainers', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usermaintainer-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
