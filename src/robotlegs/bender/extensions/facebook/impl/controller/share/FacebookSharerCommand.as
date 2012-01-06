package robotlegs.bender.extensions.facebook.impl.controller.share {
	import robotlegs.bender.extensions.facebook.api.services.share.IFacebookSharerService;
	import robotlegs.bender.extensions.facebook.impl.events.FacebookEvent;

	/**
	 * @author nahuel.scotti @ gmail.com
	 */
	public class FacebookSharerCommand {
		[Inject]
		public var event : FacebookEvent;
		[Inject]
		public var service : IFacebookSharerService;

		public function execute() : void {
			service.sharer(event.data.url, event.data.title);
		}
	}
}
