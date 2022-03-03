<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "usermaintainers".
 *
 * @property int $id
 * @property string $name
 * @property string $last_name
 * @property int $age
 * @property string $gender
 * @property string $role
 */
class Usermaintainer extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usermaintainers';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['name', 'last_name', 'age', 'gender', 'role'], 'required'],
            [['age'], 'integer'],
            [['name'], 'string', 'max' => 255],
            [['last_name', 'role'], 'string', 'max' => 200],
            [['gender'], 'string', 'max' => 1],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'last_name' => 'Last Name',
            'age' => 'Age',
            'gender' => 'Gender',
            'role' => 'Role',
        ];
    }
}
