import consumer from "./consumer"

$(document).on('turbolinks:load', function() {
    $('[data-channel-subscribe="room"]').each(function (index, element) {
        var $element = $(element),
            room_id = $element.data('room-id'),
            messageTemplate = $('[data-role="message-template"]');

        $element.animate({scrollTop: $element.prop("scrollHeight")}, 1000)

        consumer.subscriptions.create(
            {
                channel: "RoomChannel",
                room: room_id
            },
            {
                received: function (data) {
                    var content = messageTemplate.children().clone(true, true);
                    content.find('[data-role="message-username"]').text(data.user_username);
                    content.find('[data-role="message-text"]').text(data.message);
                    content.find('[data-role="message-date"]').text(data.created_at);
                    $element.append(content);
                    $element.animate({scrollTop: $element.prop("scrollHeight")}, 1000);
                }
            }
            );
    });
});