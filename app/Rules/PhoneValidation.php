<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;

class PhoneValidation implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        return substr($value,0,1) == "+" && strlen($value) == 13;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Please enter the Uzbekistan phone number!';
    }
}
