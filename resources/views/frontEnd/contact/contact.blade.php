@extends('frontEnd.master')

@section('title')
Contact
@endsection

@section('mainContent')

<hr/>
<!--
<div class="page-head_agile_info_w3l">
    <div class="container">
        <h3>C<span>ontact Us </span></h3>
        <!--/w3_short--> <!--
        <div class="services-breadcrumb">
            <div class="agile_inner_breadcrumb">

                <ul class="w3_short">
                    <li><a href="index.html">Home</a><i>|</i></li>
                    <li>Contact</li>
                </ul>
            </div>
        </div>
        <!--//w3_short-->
    </div>
</div>
<!--/contact-->
<div class="banner_bottom_agile_info">
    <div class="container">
        <div class="contact-grid-agile-w3s">
            <div class="col-md-4 contact-grid-agile-w3">
                <div class="contact-grid-agile-w31">
                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                    <h4>Address</h4>
                    <p>House#354, Road#10, Block#C, Bashundhara R/A, Dhaka.</span></p>
                </div>
            </div>
            <div class="col-md-4 contact-grid-agile-w3">
                <div class="contact-grid-agile-w32">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <h4>Call Us</h4>
                    <p>01534-694323</p>
                    <p><span>01935-723484</span></p>
                </div>
            </div>
            <div class="col-md-4 contact-grid-agile-w3">
                <div class="contact-grid-agile-w33">
                    <i class="fa fa-envelope-o" aria-hidden="true"></i>
                    <h4>Email</h4>
                    <p><a href="mailto:info@example.com">booksworld@gmail.com</a></p>
                    <p><span><a href="mailto:info@example.com">obuidul.pias@gmail.com</a></span></p>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<div class="contact-w3-agile1 map" data-aos="flip-right">

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.0361143809855!2d90.42496781429833!3d23.81731479213523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c64eba76006b%3A0xa9dc34d52318e782!2sRd%20No%2010%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1570997953852!5m2!1sen!2sbd" width="800" height="600" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
</div>
<div class="banner_bottom_agile_info">
    <div class="container">
        <div class="agile-contact-grids">
            <div class="agile-contact-left">
                <div class="col-md-6 address-grid">
                    <h4>For More <span>Information</span></h4>
                    <div class="mail-agileits-w3layouts">
                        <i class="fa fa-volume-control-phone" aria-hidden="true"></i>
                        <div class="contact-right">
                            <p>Telephone </p><span>01935-723484</span>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="mail-agileits-w3layouts">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        <div class="contact-right">
                            <p>Mail </p><a href="mailto:info@example.com">booksworld@gmail.com</a>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="mail-agileits-w3layouts">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <div class="contact-right">
                            <p>Location</p><span>House#354, Road#10, Block#C, Bashundhara R/A, Dhaka.</span>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    
                </div>
                <div class="col-md-6 contact-form">
                    <h4 class="white-w3ls">Contact <span>Form</span></h4>
                    <form action="#" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" name="Name" required="">
                            <label>Name</label>
                            <span></span>
                        </div>
                        <div class="styled-input">
                            <input type="email" name="Email" required=""> 
                            <label>Email</label>
                            <span></span>
                        </div> 
                        <div class="styled-input">
                            <input type="text" name="Subject" required="">
                            <label>Subject</label>
                            <span></span>
                        </div>
                        <div class="styled-input">
                            <textarea name="Message" required=""></textarea>
                            <label>Message</label>
                            <span></span>
                        </div>	 
                        <input type="submit" value="SEND">
                    </form>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
@endsection
