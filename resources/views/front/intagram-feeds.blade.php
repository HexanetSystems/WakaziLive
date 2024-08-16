{{-- @isset($data['instagram_feed']) --}}
		<!-- Feature Box -->
		<div class="content-inner py-0  image-wrapper">
			<div class="container-fluid px-0">
				<div class="row gx-0">

                        <?php $counter = 1; ?>
                        @foreach($data['instagram_feed']['items'] as $item)
                            @if($item['type'] == 'video')

                            @else
                            <div class="col-xl-2 col-lg-4 col-md-4 col-sm-4 col-4 wow fadeIn" data-wow-delay="0.1s">
                                <div class="insta-post dz-media dz-img-effect rotate">
                                    <a href="{{$item['url']}}">
                                        <img src="{{$item['url']}}" alt="">
                                    </a>
                                </div>
                            </div>
                            @endif

                            @if($counter == 6)
                                @break
                            @endif

                            <?php $counter++; ?>
                        @endforeach


					<a href="https://www.instagram.com/designekta/" class="instagram-link">
						<div class="follow-link  wow bounceIn" data-wow-delay="0.1s">
							<div class="follow-link-icon">
								<img src="{{asset('theme/images/insta-follow.png')}}" alt="">
							</div>
							<div class="follow-link-content">
								<p class="m-0">Follow @Wakazi</p>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
		<!-- Feature Box End -->
{{-- @endisset --}}
