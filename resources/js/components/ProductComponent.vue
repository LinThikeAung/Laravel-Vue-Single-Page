<template>
    <div class="container my-5">
        <div class="row mb-2">
            <div class="col-md-2 offset-4">
                <button class="btn btn-primary" @click="createProduct()"><i class="fa fa-plus-circle"></i> Create</button>
            </div>
            <div class="col-md-4 offset-2">
                <form @submit.prevent="searchProduct()">
                    <div class="input-group">
                        <input type="text" v-model="search" placeholder="Search" class="form-control">
                        <div class="input-group-append">
                            <button class="btn btn-primary" type="submit">
                               <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header text-white bg-dark text-center"><h4>{{ isEditMode ? 'Edit Product' : 'Create Product' }}</h4></div>
                    <div class="card-body">
                        <alert-error :form="product" :message="message"></alert-error>
                        <form action="" @submit.prevent="isEditMode ? updateProduct() : storeProduct()" @keydown="product.onKeydown($event)">
                            <div class="form-group">
                                <label for="">Name :</label>
                                <input v-model="product.name" :class="{ 'is-invalid': product.errors.has('name') }" type="text" class="form-control">
                                <has-error :form="product" field="name"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="">Price :</label>
                                <input v-model="product.price" :class="{ 'is-invalid': product.errors.has('price') }" type="number" class="form-control">
                                <has-error :form="product" field="price"></has-error>
                            </div>
                            <button class="btn btn-primary" type="submit">Create</button>
                        </form>
                    </div>
                    <div class="card-footer"></div>
                </div>
            </div>
            <div class="col-md-8">
                <table class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>PRICE</th>
                        <th>ACTIONS</th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(product,index) in products.data" :key="index">
                            <td>{{product.id}}</td>
                            <td>{{product.name}}</td>
                            <td>{{product.price}}</td>
                            <td><button class="btn btn-sm btn-success" @click="editProduct(product)">Edit</button>
                            <button class="btn btn-sm btn-danger" @click="deleteProduct(product)">Delete</button></td>
                        </tr>
                    </tbody>
                </table>
                <pagination :data="products" @pagination-change-page="view"></pagination>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                isEditMode:false,
                products:{},
                search : '',
                product:new Form({
                    id:"",
                    name:"",
                    price:""
                }),
                message:''
            }
        },
        methods:{

            searchProduct(){
                axios.get('/api/product?search=' + this.search).then((response) => {
                 this.products = response.data;
            });
            },

            view(page = 1){
                axios.get('/api/product?page=' + page).then((response) => {
                this.products = response.data;
            });
            },
            createProduct(){
                //errros message disappear chin loz  when click alternately edit btn and create btn
                this.product.clear();
                this.isEditMode = false;
                // this.product.id = '';
                // this.product.name = '';
                // this.product.price = '';

                this.product.reset();
            },
            storeProduct(){
                // axios.post('/api/product',this.product).then((res) =>{
                // using v form
                this.product.post('/api/product').then((res) =>{
                    this.view();
                /*this.product.id = '';
                this.product.name = '';
                this.product.price = '';
                */
                // OR
                this.product.reset();

                }).catch(errors=>{
                    this.message = errors.response.data.message;
                })
            },
            editProduct(p){
                this.product.clear();
                this.isEditMode = true;
                this.product.id = p.id;
                this.product.name = p.name;
                this.product.price = p.price;

            },
            // Our method to GET results from a Laravel endpoint
            updateProduct(){
                // axios.put(`/api/product/${this.product.id}`,this.product).then((res) =>{
                this.product.put(`/api/product/${this.product.id}`).then((res) =>{
                    this.view();
                // this.product.id = '';
                // this.product.name = '';
                // this.product.price = '';
                this.product.reset();
                this.isEditMode = false;
                });
            },
            deleteProduct(p){

                if(!confirm('Are U sure want to remove?')){
                    return;
                }
                axios.delete(`/api/product/${p.id}`).then((res) =>{
                    this.view();
                });
            }
        },
        created(){
            this.view();
        },
    }
</script>
