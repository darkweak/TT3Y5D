<?php

namespace App\Helpers;

class ComponentPDF
{
	const DEFAULT_MARGIN = 10;

	private function commonImage($image, string $name): string
	{
		header('Content-Type: image/png');

		$save = PDF::BASE_RESOURCES.'images/'.$name.'.png';
		imagepng($image, $save);

		return $save;
	}

	public function generateStamp(
		string $name,
		string $place,
		string $code,
		string $phone,
		bool $replacement
	): string
	{
		$infos = [
			"Docteur {$name}",
			'01 MÉDECINE GÉNÉRALE',
			"{$code} {$place}",
			"Tél. {$phone}",
			'N° Ordre : 015 215 632'
		];

		if ($replacement) {
			array_splice($infos, 1, 0, 'Médecin remplaçante');
		}

		$imageSize = $this->findMinWidthAndTotalHeight($infos);

		$im = imagecreate($imageSize[0], $imageSize[1]);

		for ($i = 0; $i < count($infos); $i++) {
			$this->setText($im, ($i+1) * (16 + self::DEFAULT_MARGIN), $infos[$i], 'cantarell.regular.otf');
		}

		return $this->commonImage($im, $name);
	}

	public function findMinWidthAndTotalHeight(array $values): array
	{
		$minimal_width = 0;
		$total_height = 0;

		foreach ($values as $value) {
			$result = $this->generateText($value, 20);
			if ($minimal_width < $result) {
				$minimal_width = $result[0];
			}
			$total_height += $result[1] + self::DEFAULT_MARGIN;
		}

		return [ $minimal_width, $total_height ];
	}

	public function setText($im, int $y, $value, string $font, int $size = 16, $grey = 128): void
	{
		imagecolorallocatealpha($im, 255, 255, 255, 127);
		$grey = imagecolorallocate($im, $grey, $grey, $grey);
		$font = PDF::BASE_RESOURCES.$font;
		imagettftext($im, $size, 0, 5, $y, $grey, $font, $value);
	}

	public function generateSignature(string $text): string
	{
		$size = 40;
		$image_size = $this->generateText($text, $size, 'signerica_thin.ttf');
		$im = imagecreate($image_size[0], $image_size[1]);
		$this->setText($im, $image_size[1] - (($size + self::DEFAULT_MARGIN)/2), $text, 'signerica_thin.ttf', $size, 0);

		return $this->commonImage($im, 'signatures/'.$text);
	}

	public function generateText($text, $size, $font = 'cantarell.regular.otf'): array
	{
		$type_space = imagettfbbox($size, 0, PDF::BASE_RESOURCES.$font, $text);
		return [
			abs($type_space[4] - $type_space[0]),
			abs($type_space[5] - $type_space[1])
		];
	}
}
