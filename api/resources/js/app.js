/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import VueRouter from 'vue-router';
Vue.use(VueRouter);

import VueAxios from 'vue-axios';
import axios from 'axios';
import App from './App.vue';
Vue.use(VueAxios, axios);

import Datetime from 'vue-datetime'
// You need a specific loader for CSS files
import 'vue-datetime/dist/vue-datetime.css'
 
Vue.use(Datetime)

import VueHtmlToPaper from 'vue-html-to-paper';

 
const options = {
  name: '_blank',
  specs: [
    'fullscreen=yes',
    'titlebar=yes',
    'scrollbars=yes'
  ],
  styles: [
    'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css',
    'https://unpkg.com/kidlat-css/css/kidlat.css'
  ]
}
 
Vue.use(VueHtmlToPaper, options);
 
// or, using the defaults with no stylesheet
 
Vue.use(VueHtmlToPaper);

import HomeComponent from './components/HomeComponent.vue';
import CreateCheckInComponent from './components/CreateCheckInComponent.vue';
import IndexCheckInComponent from './components/IndexCheckInComponent.vue';
import EditCheckInComponent from './components/EditCheckInComponent.vue';

const routes = [
    {
        name: 'home',
        path: '/',
        component: HomeComponent
    },
  
    {
        name: 'checkInCreate',
        path: '/checkIn/Create',
        component: CreateCheckInComponent
    },
    {
        name: 'CheckInIndex',
        path: '/checkIn',
        component: IndexCheckInComponent
    },
    {
        name: 'CheckInEdit',
        path: '/checkIn/edit/:id',
        component: EditCheckInComponent
    }
  ];


const router = new VueRouter({ mode: 'history', routes: routes});
const app = new Vue(Vue.util.extend({ router }, App)).$mount('#app');