<?php

namespace App\Controller;

use App\Entity\Postcode;
use App\Helpers\ComponentPDF;
use App\Helpers\GenerateDoctor;
use App\Helpers\PDF;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class Certificate extends Common
{
	const TYPE_CHOICES = ['work', 'school', 'sport', 'swim', 'validationSport'];
	const DEFAULT_BLANK_FIELD = '............';

	public function certificates(): Response
	{
		return $this->render('certificates', [
			'postcodes' => $this->manager->getRepository(Postcode::class)->findAll()
		]);
	}

	public function certificatesPDF(Request $request): Response
	{
		try {
			$componentPDF = new ComponentPDF();

			$doctor = (new GenerateDoctor())->generateDoctorIfPossibleFromRequest($this->manager, $request->request);

			$disease = 'school' === $request->request->get('type') ? "<strong>{$request->request->get('disease')}</strong>" : self::DEFAULT_BLANK_FIELD;
			$sport = 'validationSport' === $request->request->get('type') ? "<strong>{$request->request->get('disease')}</strong>" : self::DEFAULT_BLANK_FIELD;

			$listChoices = [
				' présente un état de santé nécessitant un arrêt de travail de ',
				" ne pourra fréquenter l'école, le collège, le lycée, pour cause de {$disease} pendant ",
				" doit être dispensé d'éducation physique et sportive pendant ",
				' est exempté de piscine pendant ',
				"présente ce jour, une absence de signes clinique apparent contre-indiquant la pratique du sport suivant : {$sport}"
			];

			$pdf = (new PDF())
				->setContent(
					$this->generateEnvironment(
						'certificatesPDF',
						[
							'doctor' => $doctor,
							'infos' => $request->request->all(),
							'listChoices' => $listChoices,
							'typeChoices' => self::TYPE_CHOICES
						]
					)
				);

			$checkboxes = [80, 101, 122, 144, 159];

			$informations = $componentPDF->generateStamp(
				$doctor->getLastname(),
				$doctor->getCity(),
				$doctor->getPostcode(),
				$doctor->getPhone(),
				'replace' === $request->request->get('inlineRadioOptions')
			);

			$randomX = rand(85, 95);
			$randomY = rand(20,22);
			$randomRotate = rand(-10, 10);
			$randomXSign = rand(65, 75);
			$randomYSign = rand(35, 37);
			$randomRotateSign = rand(20, 40);
			$randomWidthSign = rand(65, 80);
			$randomHeightSign = rand(15, 30);

			$pdf->transform($randomRotate, $randomX + 50, $randomY + 15);
			$pdf->setImage($informations, $randomX, $randomY, 70, 25);
			$pdf->stopTransform();
			$pdf->transform($randomRotateSign, $randomXSign + $randomWidthSign, $randomYSign + $randomHeightSign);
			$pdf->setImage($componentPDF->generateSignature(strtolower($doctor->getLastname())), $randomXSign,$randomYSign,$randomWidthSign,$randomHeightSign);
			$pdf->stopTransform();

			foreach ($checkboxes as $checkbox) {
				$pdf->setCheckbox($checkbox);
			}

			return $pdf->show();
		} catch (\Exception $e) {
			return new RedirectResponse('certificates');
		}
	}
}
