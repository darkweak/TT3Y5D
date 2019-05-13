<?php

namespace App\Helpers;

class Format
{
	public static function getFormattedTodayDate(): array
	{
		$date = explode('/', date('N/j/n/Y'));

		switch ($date[0]){
			case '1':
				$date[0] = 'lundi';
				break;
			case '2':
				$date[0] = 'mardi';
				break;
			case '3':
				$date[0] = 'mercredi';
				break;
			case '4':
				$date[0] = 'jeudi';
				break;
			case '5':
				$date[0] = 'vendredi';
				break;
			case '6':
				$date[0] = 'samedi';
				break;
			case '7':
				$date[0] = 'dimanche';
				break;
		}
		switch ($date[2]){
			case '1':
				$date[2] = 'janv';
				break;
			case '2':
				$date[2] = 'févr';
				break;
			case '3':
				$date[2] = 'mars';
				break;
			case '4':
				$date[2] = 'avril';
				break;
			case '5':
				$date[2] = 'mai';
				break;
			case '6':
				$date[2] = 'juin';
				break;
			case '7':
				$date[2] = 'juil';
				break;
			case '8':
				$date[2] = 'août';
				break;
			case '9':
				$date[2] = 'sept';
				break;
			case '10':
				$date[2] = 'oct';
				break;
			case '11':
				$date[2] = 'nov';
				break;
			case '12':
				$date[2] = 'déc';
				break;
		}

		return $date;
	}

	public static function getTimeElapsedToDates(array $date, array $user_birth): array
	{
		$months = (int)$date[2] - (int)$user_birth[1];
		$years = (int)$date[3] - (int)$user_birth[2];
		if ($months < 0) {
			$months += 12;
			$years--;
		} elseif ($months === 0) {
			if ($date[1] < $user_birth[0]) {
				$months += 11;
				$years--;
			}
		}

		return [
			'months' => $months,
			'years' => $years
		];
	}

}
