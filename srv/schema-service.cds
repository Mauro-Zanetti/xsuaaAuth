using { Security as my } from '../db/schema';

@(path: '/GeneralService')
service genService {
    entity Auth as projection on my.Auth;
    entity Login as projection on my.Login;
}

@(path: '/AuthService')
service authService @(requires: 'authenticated-user') {
    entity Auth as projection on my.Auth;
    entity Login as projection on my.Login;
}

// @requires: 'authenticated-user'
// service api {
//     entity Auth as projection on my.Auth;
//     entity Login as projection on my.Login;
// }
