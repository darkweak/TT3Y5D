<?php

namespace App\Controller;

use App\Entity\Postcode;
use App\Helpers\Format;
use App\Helpers\GenerateDoctor;
use App\Helpers\PDF;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class Orders extends Common
{
	public function orders(): Response
	{
		return $this->render('orders', [
			'postcodes' => $this->manager->getRepository(Postcode::class)->findAll()
		]);
	}

	public function ordersPDF(Request $request): Response
	{
		$date = Format::getFormattedTodayDate();

		$doctor = (new GenerateDoctor())->generateDoctorIfPossibleFromRequest($this->manager, $request->request);

		$pdf = (new PDF())
			->setContent(
				$this->generateEnvironment(
					'ordersPDF', [
						'date' => $date,
						'doctor' => $doctor,
						'infos' => $request->request->all(),
						'user' => Format::getTimeElapsedToDates($date, explode('/', $request->request->get('birthdate'))),
					]
				)
			);

		return $pdf->show();
	}
}
