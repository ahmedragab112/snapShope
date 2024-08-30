enum HttpStatusCode {
  ok(200),
  created(201),
  accepted(202),
  noContent(204),
  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404),
  internalServerError(500),
  notImplemented(501),
  badGateway(502),
  serviceUnavailable(503);

  final int code;

  const HttpStatusCode(this.code);
}
