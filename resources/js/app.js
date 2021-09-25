
require('./bootstrap');

window.Vue = require('vue');

import { Form, HasError, AlertError } from 'vform'


//global component
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
Vue.component('pagination', require('laravel-vue-pagination'));
Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('product-component', require('./components/ProductComponent.vue').default);

//when using vform
window.Form = Form;

const app = new Vue({
    el: '#app',
});
