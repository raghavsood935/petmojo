enum RedirectState { Start, Welcome, ProfileCreate, Home }

String getRedirectStateName(RedirectState redirectState) {
  return redirectState
      .toString()
      .substring(redirectState.toString().indexOf('.') + 1);
}

RedirectState getRedirectState(String redirectState) {
  redirectState = 'RedirectState.$redirectState';
  return RedirectState.values.firstWhere((e) => e.toString() == redirectState);
}
