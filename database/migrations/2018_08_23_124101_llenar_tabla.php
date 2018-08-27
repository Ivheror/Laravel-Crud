
<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Faker\Factory as Faker;

class LlenarTabla extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        for ($i=1; $i<50; $i++)
        {
            $faker = Faker::create();

            DB::table('passports')->insert(array(
                'name' => $faker->firstNameFemale,
                'email' => $faker->firstNameMale . "@gmail.com",
                'number' => $faker->numberBetween(111111111, 999999999),
                'date' => $faker->numberBetween(10, 66),
                'filename' => '1535027574imagen.jpeg',
                'office' => $faker->randomElement(['Delhi', 'Mumbai', 'Chennai', 'Bangalore']),

            ));
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}