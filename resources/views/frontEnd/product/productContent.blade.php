@extends('frontEnd.master')

@section('title')
    Product Details
@endsection

@section('mainContent')
<div class="page-head">
    <div class="container">
        <h3>Single</h3>
    </div>
</div>
<!-- //banner -->
<!-- single -->
<div class="single">
    <div class="container">
        <div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
            <div class="grid images_3_of_2">
                <div class="flexslider">
                    <!-- FlexSlider -->
                    <script>
                        // Can also be used with $(document).ready()
                        $(window).load(function () {
                            $('.flexslider').flexslider({
                                animation: "slide",
                                controlNav: "thumbnails"
                            });
                        });
                    </script>
                    <!-- //FlexSlider-->
                    <ul class="slides">
                        <li data-thumb="{{ asset($productById->productImage) }}">
                            <div class="thumb-image"> <img src="{{ asset($productById->productImage) }}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="{{ asset($productById->productImage) }}">
                            <div class="thumb-image"> <img src="{{ asset($productById->productImage) }}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>	
                        <li data-thumb="{{ asset($productById->productImage) }}">
                            <div class="thumb-image"> <img src="{{ asset($productById->productImage) }}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="{{ asset($productById->productImage) }}">
                            <div class="thumb-image"> <img src="{{ asset($productById->productImage) }}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>	
                    </ul>
                    <div class="clearfix"></div>
                </div>	
            </div>
        </div>
        <div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
            <h3>{{ $productById->productName }}</h3>
            <p><span class="item_price">TK. {{ $productById->productPrice }}</span> </p>
            <div class="rating1">
                <span class="starRating">
                    <input id="rating5" type="radio" name="rating" value="5">
                    <label for="rating5">5</label>
                    <input id="rating4" type="radio" name="rating" value="4">
                    <label for="rating4">4</label>
                    <input id="rating3" type="radio" name="rating" value="3" checked="">
                    <label for="rating3">3</label>
                    <input id="rating2" type="radio" name="rating" value="2">
                    <label for="rating2">2</label>
                    <input id="rating1" type="radio" name="rating" value="1">
                    <label for="rating1">1</label>
                </span>
            </div>
            
            {!! Form::open(['url'=>'/cart/add', 'method'=>'POST']) !!}
                <div class="color-quality">
                    <div class="color-quality-right">
                        <h5>Quality :</h5>
                        <input type="number" name="qty" value="1" min="1">
                        <input type="hidden" name="productId" value="{{ $productById->id }}">
                    </div>
                </div>
                <hr/>
                <div class="occasion-cart">
                    <button type="submit" class="item_add hvr-outline-out button2">Add to cart</button>
                </div>
            {!! Form::close() !!}
        </div>
        <div class="clearfix"> </div>

        <div class="bootstrap-tab animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
                        <h5>Product Long Description</h5>
                        {!! $productById->productLongDescription !!}
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="profile" aria-labelledby="profile-tab">
                        <div class="bootstrap-tab-text-grids">
                            <div class="bootstrap-tab-text-grid">
                                <div class="bootstrap-tab-text-grid-left">
                                    <img src="{{ asset('public/frontEnd/') }}/images/men3.jpg" alt=" " class="img-responsive">
                                </div>
                                
                                <div class="clearfix"> </div>
                            </div>

                            
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown1" aria-labelledby="dropdown1-tab">
                        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                    </div>
                    <div role="tabpanel" class="tab-pane fade bootstrap-tab-text" id="dropdown2" aria-labelledby="dropdown2-tab">
                        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection