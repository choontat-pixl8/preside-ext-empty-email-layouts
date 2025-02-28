component {

	private string function html( event, rc, prc, args={} ) {
		var layoutHtml = args.layout_html ?: "";

		if ( Len( Trim( layoutHtml ) ) ) {
			layoutHtml = ReplaceNoCase( layoutHtml, "${body}", ( args.body ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${subject}", ( args.subject ?: "" ) );
			layoutHtml = ReplaceNoCase( layoutHtml, "${viewOnlineLink}", ( args.viewOnlineLink ?: "" ) );

			args.body = layoutHtml;
		}

		return args.body;
	}

	private string function text( event, rc, prc, args={} ) {
		return args.body ?: "";
	}
}