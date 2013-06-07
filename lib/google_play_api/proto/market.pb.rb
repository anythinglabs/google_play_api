##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf/message'

##
# Enum Classes
#
class AppType < ::Protobuf::Enum
  define :NONE, 0
  define :APPLICATION, 1
  define :RINGTONE, 2
  define :WALLPAPER, 3
  define :GAME, 4
end


##
# Message Classes
#
class AppsRequest < ::Protobuf::Message
  class OrderType < ::Protobuf::Enum
    define :NONE, 0
    define :POPULAR, 1
    define :NEWEST, 2
    define :FEATURED, 3
  end
  
  class ViewType < ::Protobuf::Enum
    define :ALL, 0
    define :FREE, 1
    define :PAID, 2
  end
  
end
class AppsResponse < ::Protobuf::Message; end
class Category < ::Protobuf::Message; end
class CommentsRequest < ::Protobuf::Message; end
class CommentsResponse < ::Protobuf::Message; end
class App < ::Protobuf::Message
  class ExtendedInfo < ::Protobuf::Message; end
end
class Comment < ::Protobuf::Message; end
class CategoriesRequest < ::Protobuf::Message; end
class CategoriesResponse < ::Protobuf::Message; end
class SubCategoriesRequest < ::Protobuf::Message; end
class SubCategoriesResponse < ::Protobuf::Message; end
class RequestContext < ::Protobuf::Message; end
class GetImageRequest < ::Protobuf::Message
  class AppImageUsage < ::Protobuf::Enum
    define :ICON, 0
    define :SCREENSHOT, 1
    define :SCREENSHOT_THUMBNAIL, 2
    define :PROMO_BADGE, 3
    define :BILING_ICON, 4
  end
  
end
class GetAssetRequest < ::Protobuf::Message; end
class GetImageResponse < ::Protobuf::Message; end
class GetAssetResponse < ::Protobuf::Message
  class InstallAsset < ::Protobuf::Message; end
end
class Request < ::Protobuf::Message
  class RequestGroup < ::Protobuf::Message; end
end
class ResponseContext < ::Protobuf::Message
  class ResultType < ::Protobuf::Enum
    define :OK, 0
    define :BAD_REQUEST, 1
    define :INTERNAL_SERVICE_ERROR, 2
    define :NOT_MODIFIED, 3
    define :USER_INPUT_ERROR, 4
  end
  
end
class Response < ::Protobuf::Message
  class ResponseGroup < ::Protobuf::Message; end
end

##
# Message Fields
#
class AppsRequest
  optional ::AppType, :apptype, 1
  optional ::Protobuf::Field::StringField, :query, 2
  optional ::Protobuf::Field::StringField, :categoryid, 3
  optional ::Protobuf::Field::StringField, :appid, 4
  optional ::Protobuf::Field::BoolField, :withextendedinfo, 6
  optional ::AppsRequest::OrderType, :ordertype, 7, :default => ::AppsRequest::OrderType::NONE
  optional ::Protobuf::Field::Uint64Field, :startindex, 8
  optional ::Protobuf::Field::Int32Field, :entriescount, 9
  optional ::AppsRequest::ViewType, :viewtype, 10, :default => ::AppsRequest::ViewType::ALL
end

class AppsResponse
  repeated ::App, :app, 1
  optional ::Protobuf::Field::Int32Field, :entriescount, 2
end

class Category
  optional ::Protobuf::Field::Int32Field, :apptype, 2
  optional ::Protobuf::Field::StringField, :title, 4
  optional ::Protobuf::Field::StringField, :categoryid, 3
  optional ::Protobuf::Field::StringField, :subtitle, 5
  repeated ::Category, :subcategories, 8
end

class CommentsRequest
  optional ::Protobuf::Field::StringField, :appid, 1
  optional ::Protobuf::Field::Int32Field, :startindex, 2
  optional ::Protobuf::Field::Int32Field, :entriescount, 3
end

class CommentsResponse
  repeated ::Comment, :comments, 1
  optional ::Protobuf::Field::Int32Field, :entriescount, 2
end

class App
  class ExtendedInfo
    optional ::Protobuf::Field::StringField, :description, 13
    optional ::Protobuf::Field::Int32Field, :downloadscount, 14
    repeated ::Protobuf::Field::StringField, :permissionid, 15
    optional ::Protobuf::Field::Int32Field, :installsize, 16
    optional ::Protobuf::Field::StringField, :packagename, 17
    optional ::Protobuf::Field::StringField, :category, 18
    optional ::Protobuf::Field::StringField, :contactemail, 20
    optional ::Protobuf::Field::StringField, :downloadscounttext, 23
    optional ::Protobuf::Field::StringField, :contactphone, 26
    optional ::Protobuf::Field::StringField, :contactwebsite, 27
    optional ::Protobuf::Field::Int32Field, :screenshotscount, 30
    optional ::Protobuf::Field::StringField, :promotext, 31
    optional ::Protobuf::Field::StringField, :recentchanges, 38
    optional ::Protobuf::Field::StringField, :promotionalvideo, 43
  end
  
  optional ::Protobuf::Field::StringField, :id, 1
  optional ::Protobuf::Field::StringField, :title, 2
  optional ::AppType, :apptype, 3, :default => ::AppType::NONE
  optional ::Protobuf::Field::StringField, :creator, 4
  optional ::Protobuf::Field::StringField, :version, 5
  optional ::Protobuf::Field::StringField, :price, 6
  optional ::Protobuf::Field::StringField, :rating, 7
  optional ::Protobuf::Field::Int32Field, :ratingscount, 8
  optional ::App::ExtendedInfo, :extendedinfo, 12
  optional ::Protobuf::Field::StringField, :creatorid, 22
  optional ::Protobuf::Field::StringField, :packagename, 24
  optional ::Protobuf::Field::Int32Field, :versioncode, 25
  optional ::Protobuf::Field::StringField, :pricecurrency, 32
  optional ::Protobuf::Field::Int32Field, :pricemicros, 33
end

class Comment
  optional ::Protobuf::Field::StringField, :text, 1
  optional ::Protobuf::Field::Int32Field, :rating, 2
  optional ::Protobuf::Field::StringField, :authorname, 3
  optional ::Protobuf::Field::Uint64Field, :creationtime, 4
  optional ::Protobuf::Field::StringField, :authorid, 5
end

class CategoriesResponse
  repeated ::Category, :categories, 1
end

class SubCategoriesRequest
  optional ::AppType, :apptype, 1
end

class SubCategoriesResponse
  repeated ::Category, :category, 1
  optional ::Protobuf::Field::StringField, :subcategorydisplay, 2
  optional ::Protobuf::Field::Int32Field, :subcategoryid, 3
end

class RequestContext
  required ::Protobuf::Field::StringField, :authsubtoken, 1
  required ::Protobuf::Field::BoolField, :issecure, 2
  required ::Protobuf::Field::Int32Field, :version, 3
  required ::Protobuf::Field::StringField, :androidid, 4
  optional ::Protobuf::Field::StringField, :deviceandsdkversion, 5
  optional ::Protobuf::Field::StringField, :userlanguage, 6
  optional ::Protobuf::Field::StringField, :usercountry, 7
  optional ::Protobuf::Field::StringField, :operatoralpha, 8
  optional ::Protobuf::Field::StringField, :simoperatoralpha, 9
  optional ::Protobuf::Field::StringField, :operatornumeric, 10
  optional ::Protobuf::Field::StringField, :simoperatornumeric, 11
end

class GetImageRequest
  optional ::Protobuf::Field::StringField, :appid, 1
  optional ::GetImageRequest::AppImageUsage, :imageusage, 3
  optional ::Protobuf::Field::StringField, :imageid, 4
end

class GetAssetRequest
  required ::Protobuf::Field::StringField, :assetid, 1
  optional ::Protobuf::Field::StringField, :directdownloadkey, 2
end

class GetImageResponse
  optional ::Protobuf::Field::BytesField, :imagedata, 1
end

class GetAssetResponse
  class InstallAsset
    optional ::Protobuf::Field::StringField, :assetid, 2
    optional ::Protobuf::Field::StringField, :assetname, 3
    optional ::Protobuf::Field::StringField, :assettype, 4
    optional ::Protobuf::Field::StringField, :assetpackage, 5
    optional ::Protobuf::Field::StringField, :bloburl, 6
    optional ::Protobuf::Field::StringField, :assetsignature, 7
    optional ::Protobuf::Field::Uint64Field, :assetsize, 8
    optional ::Protobuf::Field::Uint64Field, :refundtimeout, 9
    optional ::Protobuf::Field::BoolField, :forwardlocked, 10
    optional ::Protobuf::Field::BoolField, :secured, 11
    optional ::Protobuf::Field::Int32Field, :versioncode, 12
    optional ::Protobuf::Field::StringField, :downloadauthcookiename, 13
    optional ::Protobuf::Field::StringField, :downloadauthcookievalue, 14
  end
  
  repeated ::GetAssetResponse::InstallAsset, :installasset, 1
end

class Request
  class RequestGroup
    optional ::AppsRequest, :appsrequest, 4
    optional ::CommentsRequest, :commentsrequest, 5
    optional ::GetAssetRequest, :getassetrequest, 10
    optional ::GetImageRequest, :imagerequest, 11
    optional ::SubCategoriesRequest, :subcategoriesrequest, 14
    optional ::CategoriesRequest, :categoriesrequest, 21
  end
  
  optional ::RequestContext, :context, 1
  repeated ::Request::RequestGroup, :requestgroup, 2
end

class ResponseContext
  optional ::ResponseContext::ResultType, :result, 1
  optional ::Protobuf::Field::Int32Field, :maxage, 2
  optional ::Protobuf::Field::StringField, :etag, 3
  optional ::Protobuf::Field::Int32Field, :serverversion, 4
end

class Response
  class ResponseGroup
    optional ::ResponseContext, :context, 2
    optional ::AppsResponse, :appsresponse, 3
    optional ::CommentsResponse, :commentsresponse, 4
    optional ::GetAssetResponse, :getassetresponse, 9
    optional ::GetImageResponse, :imageresponse, 10
    optional ::CategoriesResponse, :categoriesresponse, 20
    optional ::SubCategoriesResponse, :subcategoriesresponse, 13
  end
  
  repeated ::Response::ResponseGroup, :responsegroup, 1
end


