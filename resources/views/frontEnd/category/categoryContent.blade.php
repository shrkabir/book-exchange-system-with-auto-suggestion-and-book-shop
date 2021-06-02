@extends('frontEnd.master')

@section('title')
Category
@endsection

@section('mainContent')
<!--
<div class="page-head">
    <div class="container">
        <h3>Men's Wear</h3>
    </div>
</div>
 //banner -->
<!-- mens -->
<div class="men-wear">
    <div class="container">
        
        <div class="col-md-12 products-right">
            <h5>Products</h5>
            
            <div class="single-pro">
            @foreach($publishedCategoryProducts as $publishedCategoryProduct)
            <div class="col-md-3 product-men">
                <div class="men-pro-item simpleCart_shelfItem">
                    <div class="men-thumb-item">
                        <img src="{{ asset($publishedCategoryProduct->productImage) }}" alt="" class="pro-image-front" height="200" width="200">
                        <img src="{{ asset($publishedCategoryProduct->productImage) }}" alt="" class="pro-image-back" height="200" width="200">
                        <div class="men-cart-pro">
                            <div class="inner-men-cart-pro">
                                <a href="{{ url('/product-details/'.$publishedCategoryProduct->id) }}" class="link-product-add-cart">Quick View</a>
                            </div>
                        </div>
                        <span class="product-new-top">New</span>				
                    </div>
                    <div class="item-info-product ">
                        <h4><a href="{{ url('/product-details/'.$publishedCategoryProduct->id) }}">{{ $publishedCategoryProduct->productName }}</a></h4>
                        <div class="info-product-price">
                            <span class="item_price">BDT {{ $publishedCategoryProduct->productPrice }}</span>
                        </div>
                        <a href="{{ url('/product-details/'.$publishedCategoryProduct->id) }}" class="item_add single-item hvr-outline-out button2">Add to cart</a>
                    </div>
                </div>
            </div>
           @endforeach
            <div class="clearfix"></div>
        </div>
            
            
            
            

            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <!--
        <div class="pagination-grid text-right">
            <ul class="pagination paging">
                <li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
                <li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
            </ul>
        </div>
        -->
    </div>
</div>	


@endsection