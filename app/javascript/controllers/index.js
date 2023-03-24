// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CardsController from "./cards_controller"
application.register("cards", CardsController)

import ChatroomSubscriptionController from "./chatroom_subscription_controller"
application.register("chatroom-subscription", ChatroomSubscriptionController)

import InsertCommentController from "./insert_comment_controller"
application.register("insert-comment", InsertCommentController)

import StarRatingController from "./star_rating_controller"
application.register("star-rating", StarRatingController)
