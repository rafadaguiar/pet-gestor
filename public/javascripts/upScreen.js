jQuery(function(){
	$('#petGestor').click(function() {
		$('#petGestor').animate({
			height: '20%'
		}, 1000
		);
		$('#logo').animate({
			height: '100%',
			width: '403px',
			left: '33%',
			top: '2%'
		}, 1000
		);
	});
});