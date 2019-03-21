<?php

namespace App\Services;

class ImageUploadService
{
    public function handleUploadedImage($image, $dir)
    {
        if(!is_null($image)) {
            $filename = $this->generateFilename($image);
            $image->move(public_path($dir), $filename);

            return $dir.'/'.$filename;
        }

        return null;
    }

    private function generateFilename($image) {
        $extension = $image->getClientOriginalExtension();
        return uniqid().'_'.$extension;
    }
}