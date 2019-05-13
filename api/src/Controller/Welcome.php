<?php

namespace App\Controller;

class Welcome extends Common
{
	public function __invoke()
	{
		return $this->render('welcome');
	}
}
