<?php

namespace App\Helpers;

use App\Entity\Doctor;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\ParameterBag;

class GenerateDoctor
{
	public function generateDoctorIfPossibleFromRequest(EntityManagerInterface $manager, ParameterBag $request): Doctor
	{
		$doctor = null;

		if ('titulary' === $request->get('inlineRadioOptions') && $request->get('doctorSelector')) {
			$doctors = $manager->getRepository(Doctor::class)->findBy(['postcode' => $request->get('doctorSelector')]);
			$doctor = $doctors[rand(0, count($doctors) - 1)];
		}

		if (!$doctor) {
			$doctor = new Doctor();
			$doctor
				->setPostcode($request->get('postcode'))
				->setCity($request->get('doctorcity'))
				->setStreet($request->get('doctorstreet'))
				->setFirstname('Béatrice')
				->setPhone('06 48 59 70 58')
				->setLastname('DUCHAUSSOY');
		}

		return $doctor;
	}
}
