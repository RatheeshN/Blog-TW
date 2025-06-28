<?php

namespace App\Exceptions;

use Illuminate\Foundation\Exceptions\Handler as ExceptionHandler;
use Illuminate\Http\Response;
use Illuminate\Validation\ValidationException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\HttpKernel\Exception\MethodNotAllowedHttpException;
use Throwable;

class Handler extends ExceptionHandler
{
    /**
     * A list of the exception types that are not reported.
     *
     * @var array
     */
    protected $dontReport = [
        //
    ];

    /**
     * A list of the inputs that are never flashed for validation exceptions.
     *
     * @var array
     */
    protected $dontFlash = [
        'current_password',
        'password',
        'password_confirmation',
    ];

    /**
     * Register the exception handling callbacks for the application.
     *
     * @return void
     */
    public function register()
    {
        $this->reportable(function (Throwable $e) {
            //
        });
    }

    /**
     * Render an exception into an HTTP response.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Throwable  $e
     * @return \Illuminate\Http\Response
     */
    public function render($request, Throwable $e)
    {
        if ($request->expectsJson()) {
            $status = Response::HTTP_INTERNAL_SERVER_ERROR;
            $message = 'An unexpected error occurred';
            $errors = [];

            if ($e instanceof \Illuminate\Validation\ValidationException) {
                $status = Response::HTTP_UNPROCESSABLE_ENTITY;
                $message = $e->getMessage();
                $errors = $e->errors();
            } elseif ($e instanceof \Symfony\Component\HttpKernel\Exception\NotFoundHttpException) {
                $status = Response::HTTP_NOT_FOUND;
                $message = 'Resource not found';
            } elseif ($e instanceof \Illuminate\Auth\Access\AuthorizationException) {
                $status = Response::HTTP_FORBIDDEN;
                $message = 'Unauthorized';
            }

            return response()->json([
                'message' => $message,
                'errors' => $errors,
                'status' => $status,
            ], $status);
        }

        return parent::render($request, $e);
    }
}
